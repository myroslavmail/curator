pipeline {
    agent any
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Test') {
            steps {
                sh "docker run --rm --name curator --env PYTHONHOME=/usr/local/lib/python3.6 -v /root/Elasticsearch_curator:/etc/curator -v /usr/local/lib/python3.6:/usr/local/lib/python3.6 --entrypoint curator anjia0532/docker-curator --config /etc/curator/config.yml /etc/curator/action.yml"
            }
        }
    }
}
