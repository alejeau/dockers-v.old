rm -rf install/computer-database
mkdir install/computer-database

cp ~/workspace/computer-database/pom.xml install/computer-database/pom.xml
cp -R ~/workspace/computer-database/src install/computer-database/src

rm install/computer-database/src/main/resources/dao.properties
cp install/dao.properties install/computer-database/src/main/resources/dao.properties

cd ut-build
docker build -t ut-build .

