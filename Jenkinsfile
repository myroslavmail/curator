pipeline {
    agent {
        dockerfile true
    }
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Test') {
            customImage.inside('--entrypoint=/usr/bin/curator_cli')
            steps
            {
                sh "pwd"
            }
        }
    }
}
