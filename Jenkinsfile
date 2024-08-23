pipeline {
    agent any
    
    stages {
        
        stage('Checkout') {
            steps {
                git 'https://github.com/your-repo/your-app.git'
            }
        }
        
        stage('Build and Deploy to Staging') {
            steps {
                sh './deploy_staging.sh'
            }
        }
        
        stage('Security Review') {
            steps {
                input "Check the security report and approve if it's OK to proceed."
            }
        }
        
        stage('Deploy to Production') {
            steps {
                sh './deploy_production.sh'
            }
        }
    }
}