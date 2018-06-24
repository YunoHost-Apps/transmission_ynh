#!/bin/bash

#=================================================
# YUNOHOST MULTIMEDIA INTEGRATION
#=================================================

ynh_multimedia_build_main_dir () {
	wget -qq https://github.com/YunoHost-Apps/yunohost.multimedia/archive/master.zip
	unzip -qq master.zip
	./yunohost.multimedia-master/script/ynh_media_build.sh
}

ynh_multimedia_addfolder () {
	./yunohost.multimedia-master/script/ynh_media_addfolder.sh --source="$1" --dest="$2"
}

#=================================================
# BACKUP
#=================================================

HUMAN_SIZE () {	# Transforme une taille en Ko en une taille lisible pour un humain
	human=$(numfmt --to=iec --from-unit=1K $1)
	echo $human
}

CHECK_SIZE () {	# Vérifie avant chaque backup que l'espace est suffisant
	file_to_analyse=$1
	backup_size=$(du --summarize "$file_to_analyse" | cut -f1)
	free_space=$(df --output=avail "/home/yunohost.backup" | sed 1d)

	if [ $free_space -le $backup_size ]
	then
		echo "Espace insuffisant pour sauvegarder $file_to_analyse." >&2
		echo "Espace disponible: $(HUMAN_SIZE $free_space)" >&2
		ynh_die "Espace nécessaire: $(HUMAN_SIZE $backup_size)"
	fi
}

# ============= FUTURE YUNOHOST HELPER =============
# Delete a file checksum from the app settings
#
# $app should be defined when calling this helper
#
# usage: ynh_remove_file_checksum file
# | arg: file - The file for which the checksum will be deleted
ynh_delete_file_checksum () {
	local checksum_setting_name=checksum_${1//[\/ ]/_}	# Replace all '/' and ' ' by '_'
	ynh_app_setting_delete $app $checksum_setting_name
}
