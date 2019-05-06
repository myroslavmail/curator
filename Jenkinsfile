pipeline {
    agent any
    
    environment {
        COMPOSE_PROJECT_NAME = "${env.JOB_NAME}-${env.BUILD_ID}"
    }
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Example') {
            steps {
                sh "ls -la"
                sh "pwd"
                sh "docker-compose down -v"
            }
        }
    }
}
