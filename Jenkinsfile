pipeline {
    agent any
    stages {
        stage("CheckOut in build branch") {
            steps {
                echo "Checkout git repo"
                sh "pwd; ls -lrt; cd src/; pwd; ls -lrt"
            }
        }
        stage("build") {
            steps {
                echo "Buildling the application"
            }
        }
        stage("Deploy"){
            steps {
                echo "Deploying the application"
            }
        }
    }
}