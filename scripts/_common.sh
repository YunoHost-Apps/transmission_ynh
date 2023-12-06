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

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
