#!/bin/sh

echo "Starting worker..."
/spark/bin/spark-class org.apache.spark.deploy.worker.Worker --webui-port 8080 spark://master:7077
