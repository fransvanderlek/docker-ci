#!/bin/sh

docker run -it --init -p 3000:3000 -v "$(pwd):/home/workspace:cached" -v "maven_repository_vol:/maven_repository" dev-env:latest