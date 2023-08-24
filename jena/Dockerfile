FROM openjdk:17-bullseye
WORKDIR /app

ADD https://dlcdn.apache.org/jena/binaries/apache-jena-fuseki-4.8.0.tar.gz jena.tar.gz

RUN [ "gunzip", "jena.tar.gz" ]
RUN [ "tar", "-xf",  "jena.tar" ]
