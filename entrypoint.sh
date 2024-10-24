#!/bin/sh
set -e

# load environment variables from env file
if [ -f /app/env ]; then
  export $(cat /app/env | xargs)
fi

# start the flask application
exec python3 app.py
