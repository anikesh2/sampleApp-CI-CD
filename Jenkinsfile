pipeline {
    agent any
    stages {
        stage("Building Artifact") {
            steps {
                checkout scmGit(branches: [[name: '*/deploy']], extensions: [], userRemoteConfigs: [[credentialsId: 'Git', url: 'https://github.com/anikesh2/sampleApp-CI-CD']])
                sh 'mvn clean install'
                stash name: 'myFile', includes: 'target/SampleWebApplication-1.0-SNAPSHOT.war'
            }
        }
        stage('Copy to Personal Workspace') {
            steps {
                // Copy the stashed file to the personal workspace
                // sh 'mkdir -p /home/master/Desktop/Artifact/'
                unstash 'myFile'
                sh  """
                        echo $WORKSPACE  
                        sudo cp $WORKSPACE/*.war /home/master/Documents/repo/
                    """
            }
        }
    }
}