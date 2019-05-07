pipeline {
    agent any
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Test') {
            steps {
                sh "docker run --rm --name curator --entrypoint curator anjia0532/docker-curator --config /root/Elasticsearch_curator/config.yml /root/Elasticsearch_curator/action.yml"
            }
        }
    }
}
