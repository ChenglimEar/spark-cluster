#!/bin/sh

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
$SPARK_ROOT/spark-submit --master spark://master:7077 --class org.apache.spark.examples.SparkPi /spark/examples/jars/spark-examples_2.11-2.4.0.jar 1000
