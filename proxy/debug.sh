#!/bin/sh

export FLASK_APP=app
export FLASK_ENV=development
export FLASK_DEBUG=1
flask run --host=0.0.0.0