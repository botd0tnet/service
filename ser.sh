#!/bin/bash

sudo ufw allow 1789,1790,8000,22,80,443/tcp
sudo ufw reload

for(( i=1; i <=30; i++ ))
do
	cd ~
	printf "\n\n"
	kt='nym-mixnode'
	nym=${kt}${i}
	printf "Stop ${nym}.service !"	
        sudo systemctl stop ${nym}.service
	printf "\n\n"
	printf "Xong ${nym}.service !"
	printf "\n\n"
	sleep 5	
done

for(( i=1; i <=30; i++ ))
do
	cd ~
	printf "\n\n"
	kt='nym-mixnode'
	nym=${kt}${i}
	printf "Restart ${nym}.service !"	
        sudo systemctl restart ${nym}.service
	printf "\n\n"
	printf "Xong ${nym}.service !"
	printf "\n\n"
	sleep 65	
done
printf "\n\n"
printf "XONG !"
printf "\n\n"
