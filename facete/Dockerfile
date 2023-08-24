FROM openjdk:11-bullseye as build

# Install maven and git
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    make \
    maven
# RUN mkdir -p /root/
WORKDIR /app
RUN git clone -b facete4 'https://github.com/Scaseco/vaadin-jena'
# RUN --mount=type=cache,target=/root/.m2 \
#     mvn -f vaadin-jena/pom.xml clean install -DskipTests=true -Dmaven.javadoc.skip=true -B -V 
RUN git clone -b develop 'https://github.com/Scaseco/jenax'
# RUN --mount=type=cache,target=/root/.m2 \
#     mvn -f jenax/pom.xml clean install -DskipTests=true -Dmaven.javadoc.skip=true -B -V 
RUN git clone -b facete4 'https://github.com/hobbit-project/facete3'
# RUN --mount=type=cache,target=/root/.m2 \
#     mvn -f jenax/pom.xml clean install -DskipTests=true -Dmaven.javadoc.skip=true -B -V 
COPY entry.sh /app/
# CMD [ "make", "mcis" ]
CMD bash entry.sh
# CMD bash -c "git pull && mvn clean install -DskipTests=true -Dmaven.javadoc.skip=true -B -V"
# CMD ["mvn","--batch-mode", "clean", "install", "-DskipTests"]
