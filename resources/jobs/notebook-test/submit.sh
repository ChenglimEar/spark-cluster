#!/bin/bash

sleep 10s

SCRIPT_DIR="$( cd $( dirname ${BASH_SOURCE[0]} ) >/dev/null 2>&1 && pwd )"

if [ -f /spark/bin/spark-class ]; then
  SPARK_ROOT=/spark
else
  SPARK_ROOT=/usr/local/spark
fi

echo "Verifying that master is up..."
while ! curl -sSf http://master:8080 > /dev/null; do
  echo "Waiting for master to be ready"
  sleep 1s
done
echo "Submitting job..."
$SPARK_ROOT/bin/spark-submit --master spark://master:7077 $SCRIPT_DIR/job.py
