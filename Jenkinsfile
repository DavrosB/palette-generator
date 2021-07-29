pipeline {
    agent any
    
    stages {

        stage('Install') {
            steps {
                sh 'bash scripts/install.sh'
            }
        }

        stage('Test') {
            steps {
                sh 'bash scripts/test.sh'
                
        
            }
        }

        stage('Run') {
            steps {
                sh 'bash scripts/deploy.sh'
                
            
            }
        }
    
    }
    post{
        always{

            junit "junit.xml"
            cobertura autoUpdateHealth: false, autoUpdateStability: false, coberturaReportFile: 'coverage.xml', conditionalCoverageTargets: '70, 0, 0', failUnhealthy: false, failUnstable: false, lineCoverageTargets: '80, 0, 0', maxNumberOfBuilds: 0, methodCoverageTargets: '80, 0, 0', onlyStable: false, sourceEncoding: 'ASCII', zoomCoverageChart: false

        }

    }

}