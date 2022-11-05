// Uses Declarative syntax to run commands inside a container.
pipeline {
    agent {
        kubernetes {
            yaml '''
apiVersion: v1
kind: Pod
spec:
  containers:
  - name: shell
    image: ubuntu
    command:
    - sleep
    args:
    - infinity
'''
            defaultContainer 'shell'
        }
    }
    stages {
        stage('Adding/Modifying secrets') {
            steps {
                sh 'ls -la'
                sh "chmod +x ./script.sh"
                sh "./script.sh"
            }
        }
    }
}
