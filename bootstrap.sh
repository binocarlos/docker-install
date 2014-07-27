#!/usr/bin/env bash
set -eo pipefail
export DEBIAN_FRONTEND=noninteractive
export DOCKER_INSTALL_REPO=${SMESH_REPO:-"https://github.com/binocarlos/docker-install.git"}

if ! which apt-get &>/dev/null
then
  echo "This installation script requires apt-get. For manual installation instructions, consult https://github.com/binocarlos/docker-install ."
  exit 1
fi

apt-get update
apt-get install -y git make

cd ~ && test -d docker-install || git clone $DOCKER_INSTALL_REPO
cd smesh
git fetch origin
make install