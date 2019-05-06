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
                /usr/bin/curator_cli --config ./config.yml action.yml
            }
        }
    }
}
