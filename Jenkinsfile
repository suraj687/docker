pipeline {
  environment {
    registry = "surajsurya/apache"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent none
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/suraj687/docker.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
    stage('access the browser')
      agent {
        label 'server'
      }
      steps{
        sh "docker run -dit -p 5050:80 surajsurya/apache:5"
    }
  }
}
