#!/bin/bash

cmd-dockeropts() {
	if [[ $EUID -ne 0 ]]; then
	   echo "This script must be run as root" 1>&2
	   exit 1
	fi
	ip=$1
	port=$2
	if [ -z $ip ]; then
		echo "usage: configure.sh [IP]"
		exit 1
	fi
	if [ -z $port ]; then
		port=2375
	fi
	echo "DOCKER_OPTS='-H unix:///var/run/docker.sock -H tcp://$ip:$port'" > /etc/default/docker
	service docker restart
	sleep 2
}

cmd-help() {
	echo
    cat<<EOF
    help                        Print the list of commands
    dockeropts                  Update the docker options
EOF
	echo
}

cmd-dockeropts "$@"