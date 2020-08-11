# Spark Laboratory

This is a local Spark cluster implemented using Docker containers.  It is used for testing out Spark.

To take it for a test drive, simply follow the steps below.

## STEP 1

Clone this repository and make sure you have Docker installed locally.  Then change directory to the directory that you cloned to.

## STEP 2

Build the spark docker image as follows:

```
docker-compose build notebook
```

## STEP 3

Start all the local spark cluster with Jupyter server.  You should see logging for all the Docker services that are started, including a service that submits a test job.

```
docker-compose up
```

## STEP 4

Log into the Jupyter server by looking for the URL in the logs.

## STEP 5

Open the home.ipynb notebook in the browser and explore.  Try following the for the PySpark cluster and verify that the submitted test job is running and completes.

