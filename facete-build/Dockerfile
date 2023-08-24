# FROM openjdk:21-bookworm
FROM openjdk:11-bullseye as build

# Install maven and git
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    make \
    maven
WORKDIR /app
RUN git clone -b facete4 'https://github.com/hobbit-project/facete3' .
COPY entry.sh /app/
# CMD [ "make", "mcis" ]
CMD bash entry.sh
# CMD ["mvn","--batch-mode", "clean", "install", "-DskipTests"]
