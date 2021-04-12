sudo docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
sudo docker build . -t graalvm-ci
