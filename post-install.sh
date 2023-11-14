#!/bin/bash

sudo apt install ansible

sudo ansible-pull --url https://github.com/polarlabs/autopilot play-enroll.yml

exit $?

