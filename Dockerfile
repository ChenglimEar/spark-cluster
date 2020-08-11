#FROM openjdk:8-alpine
FROM jupyter/pyspark-notebook

#RUN apk --update add wget tar bash curl
#RUN wget https://archive.apache.org/dist/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz
#RUN tar -xzf spark-2.4.0-bin-hadoop2.7.tgz && \
#    mv spark-2.4.0-bin-hadoop2.7 /spark && \
#    rm spark-2.4.0-bin-hadoop2.7.tgz

USER root
RUN mkdir -p /usr/local/spark/work
RUN chmod a+rwx /usr/local/spark/work
USER $NB_USER
COPY start-master.sh /spark/bin/
COPY start-worker.sh /spark/bin/
