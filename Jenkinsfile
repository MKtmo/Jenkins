pipeline {
    agent any
    
    environment {
        GIT_URL = 'https://github.com/MKtmo/Jenkins.git'
        STAGING_SCRIPT = './deploy_staging.bat' // Utilisation de .bat pour Windows
        PRODUCTION_SCRIPT = './deploy_production.bat' // Utilisation de .bat pour Windows
    }
    
    stages {
        stage('Checkout') {
            steps {
                script {
                    def branchName = 'main' // Modifier selon la branche que vous utilisez
                    git branch: branchName, url: GIT_URL
                }
            }
        }
        
        stage('Build and Deploy to Staging') {
            steps {
                script {
                    // Assurez-vous que le script de déploiement existe et est exécutable
                    bat "${STAGING_SCRIPT}"
                }
            }
        }
        
        stage('Security Review') {
            steps {
                input message: "Check the security report and approve if it's OK to proceed."
            }
        }
        
        stage('Deploy to Production') {
            steps {
                script {
                    // Assurez-vous que le script de déploiement existe et est exécutable
                    bat "${PRODUCTION_SCRIPT}"
                }
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline completed successfully.'
        }
        failure {
            echo 'Pipeline failed.'
        }
        always {
            cleanWs() // Nettoie l'espace de travail après l'exécution
        }
    }
}
