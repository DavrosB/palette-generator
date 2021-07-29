pipeline {
    agent any
    
    stages {
        stage('Test') {
            steps {
                sh 'bash scripts/test.sh'
                junit junit/test-results.xml
                cobertura autoUpdateHealth: false, autoUpdateStability: false, coberturaReportFile: 'coverage.xml', conditionalCoverageTargets: '70, 0, 0', failUnhealthy: false, failUnstable: false, lineCoverageTargets: '80, 0, 0', maxNumberOfBuilds: 0, methodCoverageTargets: '80, 0, 0', onlyStable: false, sourceEncoding: 'ASCII', zoomCoverageChart: false

             
            }
        }

        stage('Install') {
            steps {
                sh 'bash scripts/install.sh'
            }
        }
        
        stage('Run') {
            steps {
                sh 'bash scripts/run.sh'
                
            
            }
        }
    
    }
}