# Transmission pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/transmission.svg)](https://dash.yunohost.org/appci/app/transmission) ![](https://ci-apps.yunohost.org/ci/badges/transmission.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/transmission.maintain.svg)  
[![Installer Transmission avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=transmission)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer Transmission rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble

Transmission est un client BitTorrent libre, efficace et simple.

**Version incluse :** La version du dépôt de Debian.

## Captures d'écran
![](https://raw.githubusercontent.com/YunoHost-Apps/transmission_ynh/master/transmission.jpg)


## Configuration

## Documentation

 * Documentation officielle : https://github.com/transmission/transmission/wiki
 * Documentation YunoHost : https://yunohost.org/#/app_transmission

## Caractéristiques spécifiques YunoHost

 * Intégration avec les répertoires Multimédias de YunoHost

#### Support multi-utilisateur

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/transmission%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/transmission/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/transmission%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/transmission/)

## Limitations

## Informations additionnelles
Alternative à WebUI :

Vous pouvez utiliser le client de contrôle à distance des différentes plateformes pour gérer votre serveur Transmission :

* Bureau : Transmission-remote-GUI: https://github.com/transmission-remote-gui/transgui
* Mobile : Transdroid: http://www.transdroid.org/
* Plus de clients ici : https://transmissionbt.com/resources/

Vous pouvez utiliser les informations suivantes pour vous connecter à votre serveur :

* Hôte distant : Votre domaine ou adresse IP (n'ajoutez pas le répertoire)
* Port : 443
* SSL : Activé
* Utilisateur : Votre nom d'utilisateur YunoHost
* Mot de passe : Le mot de passe de l'utilisateur YunoHost utilisé
* Répertoire RPC: /torrent/transmission/rpc (si vous utilisez le répertoire par défaut)

## Liens
 * Signaler un bug : https://github.com/YunoHost-Apps/transmission_ynh/issues
 * Site de Transmission : https://transmissionbt.com/
 * Dépôt de Transmission : https://github.com/transmission/transmission
 * Site de YunoHost : https://yunohost.org/

---

Informations pour les développeurs


Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/transmission_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/transmission_ynh/tree/testing --debug
ou
sudo yunohost app upgrade transmission -u https://github.com/YunoHost-Apps/transmission_ynh/tree/testing --debug
```
