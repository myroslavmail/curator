pipeline {
    agent {
        dockerfile true
    }
    
    customImage.inside("-u root --entrypoint='/usr/bin/curator_cli'") {}
    
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
