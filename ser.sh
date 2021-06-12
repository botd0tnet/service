#!/bin/bash

sudo ufw allow 1789,1790,8000,22,80,443/tcp
sudo ufw reload

for(( i=1; i <=30; i++ ))
do
	cd ~
	printf "\n\n"
	printf "Restart ${nym}.service !"
	kt='nym-mixnode'
	nym=${kt}${i}
        sudo systemctl restart ${nym}.service
	printf "\n\n"
	printf "Xong ${nym}.service !"
	printf "\n\n"
	sleep 65	
done
printf "\n\n"
printf "XONG !"
printf "\n\n"
