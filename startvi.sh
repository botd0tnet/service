#!/bin/bash

for(( i=1; i <=20; i++ ))
do
	cd ~
	kt='nym-mixnode'
	nym=${kt}${i}
	sudo systemctl start ${nym}.service
	sleep 2
done
printf "\n\n"
printf "DONE !"
printf "\n\n"
