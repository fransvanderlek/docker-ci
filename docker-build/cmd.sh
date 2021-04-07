git clone https://github.com/fransvanderlek/opcuaproxy.git
cd opcuaproxy
mvn clean dependency:copy-dependencies package
docker build . -t opcuaproxy:latest
