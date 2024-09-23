## Utilisation générale

Les fichiers téléchargés sont stockés dans `__DATA_DIR__` et devraient être accessibles depuis `https://__DOMAIN____PATH__/downloads/`.

Pour télécharger les fichiers, vous pouvez aussi utiliser un client SFTP, la commande SCP, ou encore configurer une app comme Nextcloud pour pouvoir naviguer dans le dossier correspondant.

## Alternative à l'interface web

Vous pouvez utiliser le client de contrôle à distance des différentes plateformes pour gérer votre serveur Transmission :

* Bureau : Transmission-remote-GUI : <https://github.com/transmission-remote-gui/transgui>
* Mobile : Transdroid : <http://www.transdroid.org/>
* Plus de clients ici : <https://transmissionbt.com/resources/>

Vous pouvez utiliser les informations suivantes pour vous connecter à votre serveur :

* Hôte distant : Votre domaine ou adresse IP (n'ajoutez pas le répertoire)
* Port : `443`
* SSL : Activé
* Utilisateur : Votre nom d'utilisateur YunoHost
* Mot de passe : Le mot de passe de l'utilisateur YunoHost utilisé
* Répertoire RPC : `__PATH__/transmission/rpc` (remplacer toute double barre oblique par une simple)
