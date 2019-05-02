pipeline {
    agent {
        image 'bobrik/curator'
    }
    
    options{
        buildDiscarder(
            logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '180', numToKeepStr: '')
        )
    }
    
    triggers {
        cron('H H/6 * * *')
    }
    
    parameters {
            string (defaultValue: '90', description: 'days parameter', name: 'Days', trim: false)
    }
   
    stages {
        stage('Example') {
            steps {
                sh "./myscript.sh -d ${params.Days}"
            }
        }
    }
}
