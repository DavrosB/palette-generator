#! bin/bash


source venv/bin/activate

python3 -m pytest --cov=application --cov-report=term-missing
python3 -m pytest --cov=application --junitxml=junit.xml --cov-report=xml --cov-report=term-missing

pipeline {
    agent any

    # stages {
    #     ...
    # }
    post {
        always {
            junit '**/*.xml'
            step([$class: 'CoberturaPublisher', autoUpdateHealth: false, autoUpdateStability: false, coberturaReportFile: '**/coverage.xml', failUnhealthy: false, failUnstable: false, maxNumberOfBuilds: 0, onlyStable: false, sourceEncoding: 'ASCII', zoomCoverageChart: false])
        }
    }
}




