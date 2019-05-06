pipeline {
    agent {
        docker {
            image 'openshift/origin-logging-curator'
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
