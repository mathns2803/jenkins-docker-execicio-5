pipeline {
    agent { dockerfile true }

    stages {
        stage('Build') {
            steps {
                script {
                    sh 'docker build -t ola-unicamp .'
                }
            }
        }
        stage('Run') {
            steps {
                script {
                    sh 'docker run --rm ola-unicamp'
                }
            }
        }
    }
}