#!/bin/bash

# create a virtual environment for Python
python3 -m venv ansible-venv

# activate the virtual environment
source ansible-venv/bin/activate

# upgrade pip
pip install --upgrade pip

# install Ansible inside the virtual environment
pip install ansible ansible-lint psutil

# check if there is a requirements.yml file, and if so, install the roles specified in it
if [ -f requirements.yml ]; then
    ansible-galaxy install -r requirements.yml
    echo "Ansible Galaxy roles have been installed."
fi

# print a message to show that Ansible is installed
echo "Ansible has been installed in the virtual environment."

