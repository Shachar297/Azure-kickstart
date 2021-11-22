pipeline {
  agent any

  stages {
    stage ("Test") {
      steps {
        script {
          sh "echo ok"
          sh "echo ${params}"
        }
      }
    }
  }
}