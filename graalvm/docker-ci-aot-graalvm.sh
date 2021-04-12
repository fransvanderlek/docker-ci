docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
docker run --env BRANCH=native-image --env GIT_REPO_URL=https://github.com/fransvanderlek/opcuaproxy.git --env PROJECT_DIR=opcuaproxy -v /var/run/docker.sock:/var/run/docker.sock -v maven_repository_vol:/root/.m2 -it graalvm-ci
