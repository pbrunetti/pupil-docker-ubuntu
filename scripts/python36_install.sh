#!/bin/bash -e

add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
apt-get install -yq python3.6 python3.6-dev libpython3.6-dev

# set python3.6 as default python3 version
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1

# install fresh version of pip (pip3)
# other methods do not work, therefore we get pip3 from source
curl -sS https://bootstrap.pypa.io/get-pip.py | python3
