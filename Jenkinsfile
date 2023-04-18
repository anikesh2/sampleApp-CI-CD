pipeline {
    agent any
    stages {
        stage("Building Artifact") {
            steps {
                checkout scmGit(branches: [[name: '*/deploy']], extensions: [], userRemoteConfigs: [[credentialsId: 'Git', url: 'https://github.com/anikesh2/sampleApp-CI-CD']])
                sh 'mvn clean install'
            }
        }
        stage('Creating Image ') {
            steps {
                sh "ls -lrt"
                sh "sudo docker build -t webapp:v$BUILD_NUMBER ."
            }
        }
        stage('Creating Container from our Image') {
            steps {
                sh """
                    sudo docker stop webapp || true
                    sudo docker rm webapp || true
                    sudo docker run --name webapp -d -p 8081:8080 webapp:v$BUILD_NUMBER
                   """
            }
        }
    }
}
