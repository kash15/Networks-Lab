#! /bin/bash

packet_size=( 56 2000 3200 )

for size in {0..2}
do
	echo "traceroute to jampui.iitg.ernet.in with packet size ${packet_size[size]}"
	printf "\n"

	for i in {0..5}
	do
		traceroute jampui.iitg.ernet.in ${packet_size[size]}
		printf "\n"
	done
done
