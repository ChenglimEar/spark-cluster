#!/bin/sh

echo "Starting master..."
if [ -f /spark/bin/spark-class ]; then
  SPARK_ROOT=/spark
else
  SPARK_ROOT=/usr/local/spark
fi
$SPARK_ROOT/bin/spark-class org.apache.spark.deploy.master.Master --ip `hostname` --port 7077 --webui-port 8080
