# Transmission for YunoHost

[![Integration level](https://dash.yunohost.org/integration/transmission.svg)](https://dash.yunohost.org/appci/app/transmission) ![](https://ci-apps.yunohost.org/ci/badges/transmission.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/transmission.maintain.svg)  
[![Install Transmission with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=transmission)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allow you to install Transmission quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview

Transmission is a fast, easy, and free BitTorrent client.

**Shipped version:** 2.94-2 (Debian repository version)

## Screenshots
![](transmission.jpg)

## Configuration

## Documentation

 * Official documentation: https://github.com/transmission/transmission/wiki
 * YunoHost documentation: https://yunohost.org/#/app_transmission

## YunoHost specific features

 * Integration with YunoHost Multimedia directories

#### Multi-users support

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/transmission%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/transmission/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/transmission%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/transmission/)

## Limitations

## Additionnal informations
Alternative to WebUI :

You can use remote client on different platforms to manage your Transmission server:

* Dekstop: Transmission-remote-GUI: https://github.com/transmission-remote-gui/transgui
* Mobile: Transdroid: http://www.transdroid.org/
* More clients here: https://transmissionbt.com/resources/

You can use the following information to connect your server:

* Remote host: Your domain or IP address (don't add folder)
* Port: 443
* SSL: Enabled
* User: Your Yunohost Username
* Password: Password of the Yunohost User above
* RPC Path: /torrent/transmission/rpc (if you used the standard folder)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/transmission_ynh/issues
 * Transmission website: https://transmissionbt.com/
 * Transmission repository: https://github.com/transmission/transmission
 * YunoHost website: https://yunohost.org/

---

## Developers infos

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/transmission_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/transmission_ynh/tree/testing --debug
or
sudo yunohost app upgrade transmission -u https://github.com/YunoHost-Apps/transmission_ynh/tree/testing --debug
```
