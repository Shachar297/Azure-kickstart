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

    stage ("Checkout") {
      steps {
        git branch : "master",
        credentialsId : 'admin',
        url : 'git@github.com:Shachar297/azure-backend.git'
      }
    }
    stage("init submodule") {
      steps {
        sh 'git submodule update --init --recursive --remote'
      }
    }
  }
}