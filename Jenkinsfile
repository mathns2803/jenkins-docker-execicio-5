pipeline {
    agent {
		docker {
			image 'ruby:2.4'
		}
	}


    stage('Build Docker Image') {
            steps {
                script {
                    // Construa a imagem Docker
                    docker.build('ola-unicamp:latest')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    // Execute o contêiner Docker
                    docker.image('ola-unicamp:latest').inside {
                        sh 'java OlaUnicamp'
                    }
                }
            }
        }
	}
}
