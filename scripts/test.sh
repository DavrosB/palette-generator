#! bin/bash


source venv/bin/activate

python3 -m pytest --cov=application --cov-report=term-missing
python3 -m pytest --cov=application --junitxml=junit.xml --cov-report=xml --cov-report=term-missing

junit allowEmptyResults: true, skipMarkingBuildUnstable: true, testResults: 'junit/test-results.xml'

cobertura autoUpdateHealth: false, autoUpdateStability: false, coberturaReportFile: 'coverage.xml', conditionalCoverageTargets: '70, 0, 0', failUnhealthy: false, failUnstable: false, lineCoverageTargets: '80, 0, 0', maxNumberOfBuilds: 0, methodCoverageTargets: '80, 0, 0', onlyStable: false, sourceEncoding: 'ASCII', zoomCoverageChart: false





