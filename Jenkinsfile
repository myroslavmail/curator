pipeline {
    agent any
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Test') {
            steps {
                sh "pwd && ls -la"
                sh "docker run --rm --name curator --entrypoint curator aroundus/elasticsearch-curator:5.7.5 -v /var/jenkins_home/workspace/Job1:/etc/curator --config /etc/curator/config.yml /etc/curator/action.yml"
            }
        }
    }
}
