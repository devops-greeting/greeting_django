#!/bin/bash
printenv
cd /var/lib/jenkins/workspace/${jobname}/src/mysite && ls
${build_id}=dontKillMe python3 manage.py runserver 0.0.0.0:8000 &



