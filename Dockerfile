FROM openjdk:8-alpine

RUN apk --update add wget tar bash curl
RUN wget https://archive.apache.org/dist/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz
RUN tar -xzf spark-2.4.0-bin-hadoop2.7.tgz && \
    mv spark-2.4.0-bin-hadoop2.7 /spark && \
    rm spark-2.4.0-bin-hadoop2.7.tgz

COPY start-master.sh /spark/bin/
COPY start-worker.sh /spark/bin/
COPY submit-job.sh /spark/bin/
