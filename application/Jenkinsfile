pipeline {
    agent any
    
    stages {
        stage('Test') {
            steps {
                sh 'bash jenkins/test.sh'
            }
        }

        stage('Install') {
            steps {
                sh 'bash jenkins/install.sh'
            }
        }
        
        stage('Run') {
            steps {
                sh 'bash jenkins/run.sh'
                
            
        }
    }
    
}