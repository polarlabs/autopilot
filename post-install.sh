#!/bin/bash

ANSIBLE_PACKAGE="ansible"
ANSIBLE_PLAYBOOK="play-enroll.yml"
REPO_URL="https://github.com/polarlabs/autopilot"

apt --version >/dev/null 2>&1
if [ $? -eq 0 ]; then
  sudo apt install $ANSIBLE_PACKAGE
  sudo ansible-pull --url $REPO_URL $ANSIBLE_PLAYBOOK
fi

exit $?
