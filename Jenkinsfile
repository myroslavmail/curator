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
                sh "/usr/bin/curator_cli --config ./config.yml action.yml"
            }
        }
    }
}
