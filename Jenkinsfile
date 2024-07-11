pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh """
						docker build -t OlaUnicamp .
						"""
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh """
						java OlaUnicamp
					"""
                }
            }
        }
    }
}