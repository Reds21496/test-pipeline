pipeline {
  agent { label 'default' }
  stages {
   stage("Adding/Modifying secrets") {
      steps {
        script {
          sh "chmod +x ./test-pipeline/script.sh"
          sh "./test-pipeline/scrip.sh"
        }
      }
    }
  }
}