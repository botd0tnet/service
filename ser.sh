#!/bin/bash

for(( i=1; i <=30; i++ ))
do
	cd ~
	kt='nym-mixnode'
	nym=${kt}${i}
  sudo systemctl restart ${nym}.service
	sleep 65
done
printf "\n\n"
printf "DONE !"
printf "\n\n"
