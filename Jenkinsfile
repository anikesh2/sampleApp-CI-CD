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
                sh 'mvn clean package; cp /var/lib/jenkins/workspace/samplleApp-build-job/target/*.war /home/master/Desktop/Artifact/; '
            }
        }
    }
}