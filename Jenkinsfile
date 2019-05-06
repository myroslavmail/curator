pipeline {
    agent {
        docker {
            image 'bobrik/curator:5.7.5'
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
