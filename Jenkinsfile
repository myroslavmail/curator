pipeline {
    agent {
        dockerfile true
    }
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Test') {
            steps {
                sh "pwd"
            }
        }
    }
}
