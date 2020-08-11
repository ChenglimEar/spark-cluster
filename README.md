# Local Spark Cluster

This is a local spark cluster implemented using Docker containers.  To take it for a test drive, simply follow the steps below.

## STEP 1

Clone this repository and make sure you have Docker installed locally.  Then change directory to the directory that you cloned to.

## STEP 2

Build the spark docker image as follows:

```
docker-compose build base
```

## STEP 3

Start all the local spark cluster with 3 workers and run a test job.  You should see logging for all the Docker services that are started, including a service that submits a test job.

```
docker-compose up --scale worker=3
```

## STEP 4

Visit [http://localhost:8080] in your web browser to see what the cluster is doing.  You should see a job running.
A simple spark standalone cluster for your testing environment purposses. A *docker-compose up* away from you solution for your spark development environment.

## STEP 5

Verify in the logs that the submit-job service correctly calculates the value of pi.

