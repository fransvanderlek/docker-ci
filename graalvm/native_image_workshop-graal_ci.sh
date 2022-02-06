docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
docker run --env GIT_REPO_URL="https://github.com/fransvanderlek/graalvm-demos.git" --env PROJECT_DIR="graalvm-demos/native-image-workshop" -v /var/run/docker.sock:/var/run/docker.sock -v maven_repository_vol:/root/.m2 -it graalvm-ci
