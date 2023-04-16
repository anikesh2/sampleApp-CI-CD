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
                stash name: 'myFile', includes: 'target/SampleWebApplication-1.0-SNAPSHOT.war'
            }
        }
        stage('Copy to Personal Workspace') {
            steps {
                // Copy the stashed file to the personal workspace
                // sh 'mkdir -p /home/master/Desktop/Artifact/'
                unstash 'myFile'
                sh 'echo $WORKSPACE; #cp target/SampleWebApplication-1.0-SNAPSHOT.war /home/master/Desktop/Artifact/'
            }
        }
    }
}