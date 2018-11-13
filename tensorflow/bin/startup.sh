#!/bin/bash

. /usr/bin/helper.sh

log_info "TensorFlow Container Start"

ulimit -c unlimited
mkdir -p /var/log/cores

while true
do
	sleep 5
done

log_info "TensorFlow Container End"
