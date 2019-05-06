pipeline {
    agent {
        dockerfile true
    }
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Example') {
            steps {
                sh "chmod +x docker-compose"
                sh "docker-compose down -v"
            }
        }
    }
}
