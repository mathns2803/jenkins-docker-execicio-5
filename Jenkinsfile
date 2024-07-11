pipeline {
    agent {
        docker {
            image 'ruby:2.4'
        }
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('ola-unicamp:latest')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('ola-unicamp:latest').inside {
                        sh 'java -cp . OlaUnicamp'
                    }
                }
            }
        }
    }
}