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
                sh "curator --config ./config.yml action.yml"
            }
        }
    }
}
