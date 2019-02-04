#!/bin/bash
cd "$(dirname "$0")"
rm -rf logs/*.gz
MCR_PASS=$(cat ~/.mcr_pass)
JAR="forge-1.12.2-14.23.5.2807-universal.jar"
RAM_MIN="1G"
RAM_MAX="8G"
CPU_CORES="3"
#CURRENT_VERSION="$(curl -s 'https://raw.githubusercontent.com/worldautomation/WA-Launcher-Pack/master/app/assets/distribution.json' | awk '/version/{i++}i==2{print; exit}' | awk -F "\"*:\"*" '{print $2}' | cut -c 3- | cut -c -7)"
if ! screen -list | grep -q "resist"; then
	echo "Server is starting!"
	bash push.sh
	
	rm server.properties
	sed s/MCR_PASS/$MCR_PASS/g server.properties.template > server.properties
	#sudo screen -dmS resist sudo java -Xmx8G -Xms6G -jar forge-1.12.2-14.23.5.2768-universal.jar nogui
	sudo screen -dmS resist sudo java -server -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:ParallelGCThreads=$CPU_CORES -XX:+AggressiveOpts -Xms$RAM_MIN -Xmx$RAM_MAX -jar $JAR nogui
else
	echo "Server already started!";
fi
