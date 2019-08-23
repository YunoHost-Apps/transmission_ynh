# Transmission app for YunoHost

[![Integration level](https://dash.yunohost.org/integration/transmission.svg)](https://dash.yunohost.org/appci/app/transmission)  
[![Install Transmission with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=transmission)

> *This package allow you to install Transmission quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview

Transmission is a fast, easy, and free BitTorrent client.

**Shipped version:** Debian repository version.

## Screenshots

![](https://transmissionbt.com/images/screenshots/Clutch-Large.jpg)

## Demo

* [YunoHost demo](https://demo.yunohost.org/nextcloud/)

## Configuration

## Documentation

 * Official documentation: https://github.com/transmission/transmission/wiki
 * YunoHost documentation: https://yunohost.org/#/app_transmission

## YunoHost specific features

 * Integration with YunoHost Multimedia directories

#### Multi-users support

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/transmission%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/transmission/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/transmission%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/transmission/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/transmission%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/transmission/)

## Limitations

## Additionnal informations
```

## Links

 * Report a bug: https://github.com/YunoHost-Apps/transmission_ynh/issues
 * Transmission website: https://transmissionbt.com/
 * Transmission repository: https://github.com/transmission/transmission
 * YunoHost website: https://yunohost.org/

---

Developers infos
----------------

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/transmission_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/transmission_ynh/tree/testing --debug
or
sudo yunohost app upgrade transmission -u https://github.com/YunoHost-Apps/transmission_ynh/tree/testing --debug
```
