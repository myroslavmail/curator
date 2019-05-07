pipeline {
    agent any
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Test') {
            steps {
                sh "apt-get update && apt-get install -y python-pip && pip install --upgrade pip"
                sh "docker run --rm --name curator -v /root/Elasticsearch_curator:/etc/curator --entrypoint curator anjia0532/docker-curator
            }
        }
    }
}
# --env PYTHONHOME=/usr/local/lib/python3.6 -v /usr/local/lib/python3.6:/usr/local/lib/python3.6
