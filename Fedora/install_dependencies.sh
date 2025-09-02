#!/bin/bash

sudo dnf install pip3 -y
pip3 install jinja2 typogrify

xargs -a dependency_list.txt sudo dnf install -y
