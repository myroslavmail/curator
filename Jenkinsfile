pipeline {
    agent any
    
    triggers {
        cron('H H/6 * * *')
    }
    
    stages {
        stage('Test') {
            steps {
                sh "pwd && ls -la"
                sh "docker run --rm --name curator -v ${pwd}:${pwd} --entrypoint curator aroundus/elasticsearch-curator:5.7.5 --config ${pwd}config.yml ${pwd}action.yml"
            }
        }
    }
}
