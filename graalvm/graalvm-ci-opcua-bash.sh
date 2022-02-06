docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
docker run --memory="5g" --env GIT_REPO_URL="--single-branch --branch native-image https://github.com/fransvanderlek/opcuaproxy.git" --env PROJECT_DIR=opcuaproxy -v /var/run/docker.sock:/var/run/docker.sock -v maven_repository_vol:/root/.m2 -it graalvm-ci /bin/bash
