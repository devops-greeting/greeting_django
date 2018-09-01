#!/bin/bash
printenv BUILD_ID
cd /var/lib/jenkins/workspace/${jobname}/src/mysite
BUILD_ID=dontKillMe nohup python3 manage.py runserver 0.0.0.0:8000 &



