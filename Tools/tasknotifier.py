"""
---
title: TaskWarrior Growl Notifier
category: scripts, python
tags: python3, scripts, notify, tools
packages: os, growlnotify
date: 2017-01-18
description: >
  OS X python script to send taskwarrior reminders to notification center.
---
"""
#!/usr/local/bin/python3
# coding: utf-8

import growlnotify
import os

growlnotify("title")
growlnotify(u"unicode")
growlnotify("title",message="message")
growlnotify("title", sticky=True)
growlnotify("title", message="message", app="Finder", url="file://%s" % os.environ["HOME"])

