#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

SETTINGS_FILE="/etc/transmission-daemon/settings.json"

_wait_and_save_rcp_password_hash() {
    # Transmission first reads the plaintext password in the config, then
    # computes a cryptographic hash and rewrites the config file.

    for ((i=0;i<10;i++)); do
        pass=$(jq -r '.["rpc-password"]' "$SETTINGS_FILE")
        if [[ "$pass" == "{"* ]]; then
            # Save the hashed password
            ynh_app_setting_set --key="rpcpassword" --value="$pass"
            # Save the edited settings file
            ynh_store_file_checksum "$SETTINGS_FILE"
            return
        fi
        sleep 1
    done

    echo "Timeout! Transmission did not save a cryptographic hash of the password in 10 seconds!"
    return 1
}

_save_and_revert_rpc_password_hash_to_password() {
    # This one is tricky :
    # * transmission did password -> hash (we want to store hash)
    # * user might have overrided other settings, we want to save them
    # * we don't want false positives about user editing, so we revert the password change
    # * in upgrade script, we will then re-write the saved password hash.

    password_hash=$(jq -r '.["rpc-password"]' "$SETTINGS_FILE")
    if [[ "$rpcpassword" == "$password_hash" ]]; then
        # Upgrade already did this, exiting
        return
    fi

    ynh_app_setting_set --key="rpcpassword" --value="$password_hash"

    # Revert the change to maybe prevent ynh_backup_if_checksum_is_different to trigger
    sed -i "s|\"${password_hash}\"|\"${rpcpassword}\"|" "$SETTINGS_FILE"
}

_patch_download_locations() {
    # First check if patching is required...
    if ! grep -R /home/yunohost.transmission /var/lib/transmission-daemon/info/resume >/dev/null; then
        return
    fi

    rpc_url="http://127.0.0.1:${port}${path_less}transmission/rpc"

    mapfile -t stopped_torrents < <(
        transmission-remote "$rpc_url" -l \
            | awk -F '[[:space:]][[:space:]]+' '{if ($9 == "Stopped") print $2;}'
    )

    for torrent in "${stopped_torrents[@]}"; do
        # Remove trailing '*' error marker
        torrent="${torrent%\*}"
        location=$(
            transmission-remote "$rpc_url" -t $torrent -i | grep Location: | awk -F ': ' '{print $2}'
        )
        newlocation=$(
            echo "$location" | sed -e 's|yunohost.transmission|yunohost.app/transmission|'
        )
        transmission-remote "$rpc_url" -t "$torrent" --find "$newlocation"
        transmission-remote "$rpc_url" -t "$torrent" --verify
    done
}
