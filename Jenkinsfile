pipeline {
    agent {
        docker {
            image 'openjdk:11'
            label 'docker'
        }
    }

    stages {
        stage('Build') {
            steps {
                script {
                    docker.build('ola-unicamp')
                }
            }
        }
        stage('Run') {
            steps {
                script {
                    docker.image('ola-unicamp').inside {
                        sh 'java OlaUnicamp'
                    }
                }
            }
        }
    }
}
