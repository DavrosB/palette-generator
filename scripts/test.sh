#! bin/bash

python3 -m venv venv
pip3 install python3 pytest pytest-cov flask_testing
source venv/bin/activate
python3 -m pytest --cov=application --cov-report=term-missing
python3 -m pytest --cov=application --junitxml=junit.xml --cov-report=xml --cov-report=term-missing


