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
    stage("init submodule") {
      steps {
        sh 'git submodule update --init --recursive --remote'
      }
    }
  }
}