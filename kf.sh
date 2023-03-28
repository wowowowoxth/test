#! /bin/bash

case $1 in
"start"){
    for i in xth001 xth002 xth003 xth004 xth005
    do
        echo " --------启动 $i Kafka-------"
        ssh $i "/opt/module/kafka/bin/kafka-server-start.sh -daemon /opt/module/kafka/config/server.properties"
    done
};;
"stop"){
    for i in xth001 xth002 xth003 xth004 xth005
    do
        echo " --------停止 $i Kafka-------"
        ssh $i "/opt/module/kafka/bin/kafka-server-stop.sh "
    done
};;
esac

