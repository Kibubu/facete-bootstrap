# FROM openjdk:21-bookworm
FROM openjdk:11-bullseye as build

# Install maven and git
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    make \
    maven
WORKDIR /app
RUN git clone -b facete4 'https://github.com/Scaseco/vaadin-jena' .
# CMD [ "mvn", "clean", "install", "-DskipTests=true", "-Dmaven.javadoc.skip=true", "-B", "-V" ]
CMD bash -c "git pull && mvn clean install -DskipTests=true -Dmaven.javadoc.skip=true -B -V"