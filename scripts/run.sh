#!/bin/bash
source venv/bin/activate
gunicorn  --bind=0.0.0.0:5000 --workers 4 app:app


python3 app.py