#!/bin/bash

for(( i=3; i <=30; i++ ))
do
	cd ~
	kt='nym-mixnode'
	nym=${kt}${i}
        sudo systemctl restart ${nym}.service
	sleep 65
	printf "\n\n"
	printf "Xong ${nym}.service !"
	printf "\n\n"
done
printf "\n\n"
printf "XONG !"
printf "\n\n"
