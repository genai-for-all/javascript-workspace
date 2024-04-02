#!/bin/bash

: <<'END_COMMENT'
see https://devopscube.com/run-docker-in-docker/

docker run -it -v /var/run/docker.sock:/var/run/docker.sock --name capsule-workspace --rm k33g/genai-javascript-workspace:0.0.0 
# and then
sudo chmod 666 /var/run/docker.sock
END_COMMENT

docker run -it --name capsule-workspace --rm k33g/genai-javascript-workspace:0.0.0 
