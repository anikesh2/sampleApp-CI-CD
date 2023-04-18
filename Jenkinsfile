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
                sh "docker build -t webapp:v$BUILD_NUMBER ."
            }
        }
        stage('Creating Container from our Image') {
            steps {
                sh """
                    docker stop webapp || true
                    docker rm webapp || true
                    docker run --name webapp -d -p 8081:8080 webapp:v$BUILD_NUMBER
                   """
            }
        }
    }
}