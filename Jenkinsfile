pipeline {
    agent any
    stages {
        stage("CheckOut in build branch") {
            steps {
                echo "Checkout git repo"
                sh "pwd; ls -lrt"
            }
        }
        stage("Building Artifact") {
            steps {
                echo "Buildling the application"
                sh 'mvn clean package'
            }
        }
    }
}