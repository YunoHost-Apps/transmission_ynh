## General tips

Torrents are located in `__DATA_DIR__` and should be accessible from `https://__DOMAIN____PATH__/downloads`.

Alternatively, you can download the files using an SFTP client, the SCP command, or you configure another app such as Nextcloud to be able to browse these files.

## Alternative to the web ui

You can use remote client on different platforms to manage your Transmission server:

* Dekstop: Transmission-remote-GUI: <https://github.com/transmission-remote-gui/transgui>
* Mobile: Transdroid: <http://www.transdroid.org/>
* More clients here: <https://transmissionbt.com/resources/>

You can use the following information to connect your server:

* Remote host: Your domain or IP address (don't add folder)
* Port: `443`
* SSL: Enabled
* User: Your Yunohost Username
* Password: Password of the Yunohost User above
* RPC Path: `__PATH__/transmission/rpc` (replace any double slash with a single one)
