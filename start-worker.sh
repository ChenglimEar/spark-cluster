#!/bin/sh

echo "Starting worker..."
if [ -f /spark/bin/spark-class ]; then
  SPARK_ROOT=/spark
else
  SPARK_ROOT=/usr/local/spark
fi
$SPARK_ROOT/bin/spark-class org.apache.spark.deploy.worker.Worker --webui-port 8080 spark://master:7077
