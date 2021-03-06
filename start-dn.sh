#!/bin/bash

if [ -n $1 ]; then
  NN_IP_STR="-e NN_IP=$1"
elif [ -n $NN_IP ]; then
  NN_IP_STR="-e NN_IP=$NN_IP"
fi

docker run -d -t -v /tmp/hdfs/slave:/home/hduser/hdfs --net=host -P $NN_IP_STR --name datanode ferronrsmith/hadoop-datanode
