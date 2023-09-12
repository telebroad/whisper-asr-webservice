#!/bin/sh

# Start nginx in the background
nginx -g "daemon off;" &

# Start gunicorn
gunicorn --bind 0.0.0.0:9001 --workers 1 --timeout 0 app.webservice:app -k uvicorn.workers.UvicornWorker
