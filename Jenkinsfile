pipeline {
    agent any
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Test') {
            steps {
                sh "pwd && ls -la"
                sh "docker run --rm --name curator --entrypoint curator anjia0532/docker-curator --config config.yml action.yml"
            }
        }
    }
}
