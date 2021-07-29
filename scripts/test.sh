#! bin/bash

python3 -m venv venv
source venv/bin/activate

# pip3 install pytest pytest-cov flask_testing

python3 -m pytest --cov=application --cov-report=term-missing
python3 -m pytest --cov=application --junitxml=junit.xml --cov-report=xml --cov-report=term-missing



