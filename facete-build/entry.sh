git pull
mvn clean install -f pom.xml -D skipTests -P production -pl :facete3-pkg-app-docker-web jib:buildTar
cp facete3-pkg-parent/facete3-pkg-docker-app-web/target/jib-image.tar /app/target/facete-docker-image.tar