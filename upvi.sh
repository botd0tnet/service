#!/bin/bash

mkdir datavi
cd datavi

for(( i=1; i <=30; i++ ))
do
	kt='nym'
	nym=${kt}${i}
	rm -r /home/${nym}/.nym/
	cp -a /root/datavi/${nym}/.nym/ /home/${nym}/.nym/
	sleep 2
done
printf "\n\n"
printf "DONE !"
printf "\n\n"
