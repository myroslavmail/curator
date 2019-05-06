pipeline {
    agent {
        dockerfile true
    }
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stage('Test') {
        customImage.inside('--entrypoint=/usr/bin/curator_cli') {
            sh "pwd"
        }
    }
}
