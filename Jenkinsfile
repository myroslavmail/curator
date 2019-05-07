pipeline {
    agent any
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Test') {
            steps {
                sh 'docker run --rm --name curator -v `pwd`:/etc/curator -w /etc/curator --entrypoint curator aroundus/elasticsearch-curator:5.7.5 && pwd && ls -la'
            }
        }
    }
}
