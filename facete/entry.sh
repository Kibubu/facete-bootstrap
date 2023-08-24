git -C /app/vaadin-jena/ pull
mvn -f vaadin-jena/pom.xml clean install -DskipTests=true -Dmaven.javadoc.skip=true -B -V 

git -C /app/jenax pull
mvn -f vaadin-jena/pom.xml clean install -DskipTests=true -Dmaven.javadoc.skip=true -B -V 

git -C /app/facete3 pull
mvn -f facete3/pom.xml clean install -D skipTests -P production -pl :facete3-pkg-app-docker-web jib:buildTar

cp /app/facete3/facete3-pkg-parent/facete3-pkg-docker-app-web/target/jib-image.tar /app/target/facete-docker-image.tar