#!/bin/sh

IP="0.0.0.0"
PORT="5000"

set -e

gunicorn -w 4 -b $HOST:$PORT run:app --access-logfile - --error-logfile -
#flask run --host $IP --port $PORT

