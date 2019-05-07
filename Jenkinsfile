pipeline {
    agent any
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Test') {
            steps {
                sh "pwd && ls -la"
                sh "docker run --rm --name curator -v $(pwd):/etc/curator --entrypoint curator aroundus/elasticsearch-curator:5.7.5 --config /etc/curator/config.yml /etc/curator/action.yml"
                sh "pwd && ls -la /etc/curator/"
            }
        }
    }
}
