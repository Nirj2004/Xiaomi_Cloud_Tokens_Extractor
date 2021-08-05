#!/usr/bin/env bash

wget -q https://github.com/Nirj2004/Xiaomi-cloud-tokens-extractor/releases/latest/download/token_extractor_docker.zip
unzip token_extractor_docker.zip
cd token_extractor_docker
docker_image=$(docker build -q .)
docker run --rm -it $docker_image
docker rmi $docker_image
cd ..
rm -rf token_extractor_docker token_extractor_docker.zip