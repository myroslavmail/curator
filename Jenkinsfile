pipeline {
    agent {
        docker {
            image 'bobrik/curator:5.6.0'
        }
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
