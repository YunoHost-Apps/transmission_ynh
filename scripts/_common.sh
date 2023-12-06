#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

SETTINGS_FILE="/etc/transmission-daemon/settings.json"

#=================================================
# PERSONAL HELPERS
#=================================================

_wait_and_save_rcp_password_hash() {
    # Transmission first reads the plaintext password in the config, then
    # computes a cryptographic hash and rewrites the config file.

    for ((i=0;i<10;i++)); do
        pass=$(jq -r '.["rpc-password"]' "$SETTINGS_FILE")
        if [[ "$pass" == "{"* ]]; then
            # Save the hashed password
            ynh_app_setting_set --app="$app" --key="rpcpassword" --value="$pass"
            # Save the edited settings file
            ynh_store_file_checksum --file="$SETTINGS_FILE"
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

    ynh_app_setting_set --app="$app" --key="rpcpassword" --value="$password_hash"

    # Revert the change to maybe prevent ynh_backup_if_checksum_is_different to trigger
    sed -i "s|\"${password_hash}\"|\"${rpcpassword}\"|" "$SETTINGS_FILE"
}


#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
