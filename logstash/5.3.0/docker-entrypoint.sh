#!/bin/bash
set -e 
tmp=$LogFile
if [ ${tmp:0:1} = '/' ] ;then
    tmp='"'$LogFile'"'
fi
sed -i -E "s#LogFile#$tmp#g" $LOGSTASH_HOME/agent/node.conf
sed -i -E "s#CODEC#$CODEC#g" $LOGSTASH_HOME/agent/node.conf
sed -i -E "s#ES_SERVER#$ES_SERVER#g" $LOGSTASH_HOME/agent/node.conf
sed -i -E "s#INDICES#$INDICES#g" $LOGSTASH_HOME/agent/node.conf

env
echo 'Logstash init process done. Ready for start up.'
echo "Using the following configuration:"
cat $LOGSTASH_HOME/agent/node.conf
exec "$@"
