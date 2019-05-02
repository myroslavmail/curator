pipeline {
    agent {
        docker {
            image 'bobrik/curator'
        }
    }
    
    options{
        buildDiscarder(
            logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '180', numToKeepStr: '')
        )
    }
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Example') {
            steps {
                sh "./myscript.sh"
            }
        }
    }
}
