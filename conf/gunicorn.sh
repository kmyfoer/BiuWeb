#!/bin/bash

cd ..
gunicorn -k gevent -w 4 -b :5000 --reload --access-logfile -  --timeout 60 --keep-alive 75 wsgi:app
