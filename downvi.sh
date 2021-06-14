#!/bin/bash

mkdir datavi
cd datavi

for(( i=1; i <=30; i++ ))
do
	kt='nym'
	nym=${kt}${i}
	mkdir ${nym}	
	cp -a /home/${nym}/.nym/ /root/datavi/${nym}
	sleep 2
done
printf "\n\n"
printf "DONE !"
printf "\n\n"
