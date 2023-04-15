pipeline {
    agent any
    stages {
        stage("CheckOut") {
            steps {
                echo "Checkout git repo"
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