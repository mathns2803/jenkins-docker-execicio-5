pipeline {
    agent any

  tools {
    // a bit ugly because there is no `@Symbol` annotation for the DockerTool
    // see the discussion about this in PR 77 and PR 52: 
    // https://github.com/jenkinsci/docker-commons-plugin/pull/77#discussion_r280910822
    // https://github.com/jenkinsci/docker-commons-plugin/pull/52
    'org.jenkinsci.plugins.docker.commons.tools.DockerTool' '18.09'
  }
    stages {
        stage('Build and Test') {
            steps {
                withDockerContainer('openjdk:11') {

                    sh 'java -version'
                    sh 'javac -version'

                    sh 'java OlaUnicamp'
                }
            }
        }
    }
}
