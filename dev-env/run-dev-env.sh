#!/bin/sh

docker run -it --init -p 3000:3000 -v "$(pwd):/home/workspace:cached" dev-env:latest