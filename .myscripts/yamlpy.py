#!/usr/bin/python

import yaml

stream = file('students.yml', 'r')
yaml.load(stream)


