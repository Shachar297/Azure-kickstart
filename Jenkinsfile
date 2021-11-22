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
  stage ("Create VM") {
    steps {
      script {
        sh ("
          az vm create \
          --resource-group ${RESOURCE_GROUP_NAME} \
          --name ${VM_NAME} \
          --image ${FIRST_IMAGE} \
          --public-ip-sku Standard \
          --admin-username ${USER_NAME}
          ")
        }
      }
    }
  }
}



    // stage ("Checkout") {
    //   steps {
    //     git branch : "master",
    //     credentialsId : 'Shachar297',
    //     url : 'git@github.com:Shachar297/azure-backend.git'
    //   }
    // }
    // stage("init submodule") {
    //   steps {
    //     sh 'git submodule update --init --recursive --remote'
    //   }
    // }