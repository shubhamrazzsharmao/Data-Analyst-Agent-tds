#!/bin/bash
# Start Uvicorn with Gunicorn for production
exec gunicorn -k uvicorn.workers.UvicornWorker app:app --bind=0.0.0.0:$PORT --workers=1
