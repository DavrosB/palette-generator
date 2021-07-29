pipeline {
    agent any
    
    stages {
        stage('Test') {
            steps {
                sh 'bash scripts/test.sh'
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