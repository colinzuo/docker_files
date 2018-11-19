#!/bin/bash
docker_image_name=colinzuo.io/tensorflow

docker build -t $docker_image_name:$1 .

docker save -o colinzuo-tensorflow.tar $docker_image_name:$1
