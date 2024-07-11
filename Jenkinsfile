pipeline {
    agent any

    stages {
        stage('Build and Test') {
            steps {
                withDockerContainer('openjdk:11') {

                    sh 'java -version'
                    sh 'javac -version'
                }
            }
        }
    }
}
