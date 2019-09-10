#!/usr/bin/env bash

if [ $# -eq 3 ]
then

	## Create topics
	~/kafka_2.12-2.3.0/bin/kafka-topics.sh --create \
	    --replication-factor $2 \
	    --partitions $3 \
	    --topic $1 \
	    --zookeeper  localhost:2181


	## List created topics
	~/kafka_2.12-2.3.0/bin/kafka-topics.sh --list \
	    --zookeeper localhost:2181

else 
	echo "mauvais nombre d'argument il faut préciser le nom du topic la replication et le nb de partitions"

fi
