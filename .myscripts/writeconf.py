#!/usr/bin/python3

import os
configfile_name = "config.yml"

if not os.path.isfile(configfile_name):
    cfgfile = open(configfile_name, 'w')

    Config = ConfigParser()
    Config.add_section('student')
    Config.add_section('id')
    Config.set('student', 'id')
    Config.add_section('name')
    Config.set('name', 'firstname', 'lastname')
    Config.set('student', 'id', 'name')
    Config.add_section('grade')
    Config.set('grade', 'gnumber', 'gname')
    Config.add_section('days')
    Config.set('days', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday')
    Config.set('student',
                ['id',
                'name',
                'grade',
                'days'])
    Config.set('student')
    Config.write(cfgfile)
    cfgfile.close()
