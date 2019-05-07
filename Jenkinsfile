pipeline {
    agent any
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Test') {
            steps {
                sh "docker run --rm --name curator -v /root/Elasticsearch_curator:/etc/curator --entrypoint curator anjia0532/docker-curator --config /etc/curator/config.yml /etc/curator/action.yml"
            }
        }
    }
}
