#!/bin/bash
cd "$(dirname "$0")"
rm -rf logs/*.gz
DISCORD=$(cat ~/.discord_token)
WP_USER=$(cat ~/.wp_user)
WP_PASS=$(cat ~/.wp_pass)
MYSQL_DATABASE=$(cat ~/.mysql_database)
MYSQL_USER=$(cat ~/.mysql_user)
MYSQL_PASSWORD=$(cat ~/.mysql_password)
MYSQL_HOST=$(cat ~/.mysql_host)
IRC_PASSWORD=$(cat ~/.irc_password)
MCR_PASS=$(cat ~/.mcr_pass)
MONGO=$(cat ~/.mongo)
#CURRENT_VERSION="$(curl -s 'https://raw.githubusercontent.com/worldautomation/WA-Launcher-Pack/master/app/assets/distribution.json' | awk '/version/{i++}i==2{print; exit}' | awk -F "\"*:\"*" '{print $2}' | cut -c 3- | cut -c -7)"
if ! screen -list | grep -q "resist"; then
	echo "Server is starting!"
	bash push.sh
	
	# MagiBridge MySQL
	rm /storage/resist-server-pack/plugins/magibridge/MagiBridge.conf;
	sed "s#DISCORD_TOKEN#$DISCORD#g" /storage/resist-server-pack/plugins/magibridge/MagiBridge.conf.template > /storage/resist-server-pack/plugins/magibridge/MagiBridge.conf;

	# UltimateChat MySQL
	rm /storage/resist-server-pack/plugins/ultimatechat/config.conf;
	sed "s#DISCORD_TOKEN#$DISCORD#g" /storage/resist-server-pack/plugins/ultimatechat/config.conf.template > /storage/resist-server-pack/plugins/ultimatechat/config.conf;

	# LuckPerms MySQL
	rm /storage/resist-server-pack/plugins/luckperms/luckperms.conf;
	sed "s#MONGO_STRING#$MONGO#g" /storage/resist-server-pack/plugins/luckperms/luckperms.conf.template > /storage/resist-server-pack/plugins/luckperms/luckperms.conf;
	sed -i "s/MONGO_STRING/\&/g" /storage/resist-server-pack/plugins/luckperms/luckperms.conf;
	sed -i "s/MYSQL_USER/$MYSQL_USER/g" /storage/resist-server-pack/plugins/luckperms/luckperms.conf;
	sed -i "s/MYSQL_DATABASE/$MYSQL_DATABASE/g" /storage/resist-server-pack/plugins/luckperms/luckperms.conf;
	sed -i "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /storage/resist-server-pack/plugins/luckperms/luckperms.conf;
	sed -i "s/MYSQL_HOST/$MYSQL_HOST/g" /storage/resist-server-pack/plugins/luckperms/luckperms.conf;
	
	# InvSync MySQL
	rm /storage/resist-server-pack/plugins/invsync/invsync.conf;
	sed "s#MYSQL_DATABASE#$MYSQL_DATABASE#g" /storage/resist-server-pack/plugins/invsync/invsync.conf.template > /storage/resist-server-pack/plugins/invsync/invsync.conf;
	sed -i "s/MYSQL_USER/$MYSQL_USER/g" /storage/resist-server-pack/plugins/invsync/invsync.conf;
	sed -i "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /storage/resist-server-pack/plugins/invsync/invsync.conf;
	sed -i "s/MYSQL_HOST/$MYSQL_HOST/g" /storage/resist-server-pack/plugins/invsync/invsync.conf;

	# BetterChunkLoader MySQL
	rm /storage/resist-server-pack/plugins/betterchunkloader/config.conf;
	sed "s#MYSQL_DATABASE#$MYSQL_DATABASE#g" /storage/resist-server-pack/plugins/betterchunkloader/config.conf.template > /storage/resist-server-pack/plugins/betterchunkloader/config.conf;
	sed -i "s/MYSQL_USER/$MYSQL_USER/g" /storage/resist-server-pack/plugins/betterchunkloader/config.conf;
	sed -i "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /storage/resist-server-pack/plugins/betterchunkloader/config.conf;
	sed -i "s/MYSQL_HOST/$MYSQL_HOST/g" /storage/resist-server-pack/plugins/betterchunkloader/config.conf;

	# TotalEconomy MySQL
	rm /storage/resist-server-pack/plugins/totaleconomy/totaleconomy.conf;
	sed "s#MYSQL_DATABASE#$MYSQL_DATABASE#g" /storage/resist-server-pack/plugins/totaleconomy/totaleconomy.conf.template > /storage/resist-server-pack/plugins/totaleconomy/totaleconomy.conf;
	sed -i "s/MYSQL_USER/$MYSQL_USER/g" /storage/resist-server-pack/plugins/totaleconomy/totaleconomy.conf;
	sed -i "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /storage/resist-server-pack/plugins/totaleconomy/totaleconomy.conf;
	sed -i "s/MYSQL_HOST/$MYSQL_HOST/g" /storage/resist-server-pack/plugins/totaleconomy/totaleconomy.conf;

	# RankUp MySQL
	rm /storage/resist-server-pack/plugins/rankup/rankup.conf;
	sed "s#MYSQL_DATABASE#$MYSQL_DATABASE#g" /storage/resist-server-pack/plugins/rankup/rankup.conf.template > /storage/resist-server-pack/plugins/rankup/rankup.conf;
	sed -i "s/MYSQL_USER/$MYSQL_USER/g" /storage/resist-server-pack/plugins/rankup/rankup.conf;
	sed -i "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /storage/resist-server-pack/plugins/rankup/rankup.conf;
	sed -i "s/MYSQL_HOST/$MYSQL_HOST/g" /storage/resist-server-pack/plugins/rankup/rankup.conf;

	# Plan MySQL
	rm /storage/resist-server-pack/plugins/plan/config.yml;
	sed "s#MYSQL_DATABASE#$MYSQL_DATABASE#g" /storage/resist-server-pack/plugins/plan/config.yml.template > /storage/resist-server-pack/plugins/plan/config.yml;
	sed -i "s/MYSQL_USER/$MYSQL_USER/g" /storage/resist-server-pack/plugins/plan/config.yml;
	sed -i "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /storage/resist-server-pack/plugins/plan/config.yml;
	sed -i "s/MYSQL_HOST/$MYSQL_HOST/g" /storage/resist-server-pack/plugins/plan/config.yml;

	# aurionsvotelistener MySQL
	rm /storage/resist-server-pack/plugins/aurionsvotelistener/Setting.conf;
	sed "s#MYSQL_DATABASE#$MYSQL_DATABASE#g" /storage/resist-server-pack/plugins/aurionsvotelistener/Setting.conf.template > /storage/resist-server-pack/plugins/aurionsvotelistener/Setting.conf;
	sed -i "s/MYSQL_USER/$MYSQL_USER/g" /storage/resist-server-pack/plugins/aurionsvotelistener/Setting.conf;
	sed -i "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /storage/resist-server-pack/plugins/aurionsvotelistener/Setting.conf;
	sed -i "s/MYSQL_HOST/$MYSQL_HOST/g" /storage/resist-server-pack/plugins/aurionsvotelistener/Setting.conf;

	# PJP MySQL
	rm /storage/resist-server-pack/plugins/pjp/Setting.conf;
	sed "s#MYSQL_DATABASE#$MYSQL_DATABASE#g" /storage/resist-server-pack/plugins/pjp/pjp.conf.template > /storage/resist-server-pack/plugins/pjp/pjp.conf;
	sed -i "s/MYSQL_USER/$MYSQL_USER/g" /storage/resist-server-pack/plugins/pjp/pjp.conf;
	sed -i "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /storage/resist-server-pack/plugins/pjp/pjp.conf;
	sed -i "s/MYSQL_HOST/$MYSQL_HOST/g" /storage/resist-server-pack/plugins/pjp/pjp.conf;
	
	# PurpleIRC MySQL
	rm /storage/resist-server-pack/config/purpleirc/bots/ResistBot.yml;
	mkdir -p /storage/resist-server-pack/config/purpleirc/bots;
	sed "s#IRC_PASSWORD#$IRC_PASSWORD#g" /storage/resist-server-pack/config/purpleirc/ResistBot.yml.template > /storage/resist-server-pack/config/purpleirc/bots/ResistBot.yml;

	# SpongePress MySQL
	rm /storage/resist-server-pack/plugins/resist/spongepress.conf;
	sed "s#MYSQL_DATABASE#$MYSQL_DATABASE#g" /storage/resist-server-pack/plugins/resist/spongepress.conf.template > /storage/resist-server-pack/plugins/resist/spongepress.conf;
	sed -i "s/MYSQL_USER/$MYSQL_USER/g" /storage/resist-server-pack/plugins/resist/spongepress.conf;
	sed -i "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /storage/resist-server-pack/plugins/resist/spongepress.conf;
	sed -i "s/MYSQL_HOST/$MYSQL_HOST/g" /storage/resist-server-pack/plugins/resist/spongepress.conf;
	sed -i "s/WP_USER/$WP_USER/g" /storage/resist-server-pack/plugins/resist/spongepress.conf;
	sed -i "s/WP_PASS/$WP_PASS/g" /storage/resist-server-pack/plugins/resist/spongepress.conf;
	
	rm server.properties
	sed s/MCR_PASS/$MCR_PASS/g server.properties.template > server.properties
	#sudo screen -dmS resist sudo java -Xmx8G -Xms6G -jar forge-1.12.2-14.23.5.2768-universal.jar nogui
	sudo screen -dmS resist sudo java -server -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:ParallelGCThreads=3 -XX:+AggressiveOpts -Xms1G -Xmx8G -jar forge-1.12.2-14.23.5.2807-universal.jar nogui
else
	echo "Server already started!";
fi
