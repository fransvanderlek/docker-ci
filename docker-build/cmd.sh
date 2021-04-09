#!/bin/bash
git clone https://github.com/fransvanderlek/opcuaproxy.git
cd opcuaproxy
./build.sh
docker build . -t opcua-proxy:latest
