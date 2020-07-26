pipeline {
  environment {
    registry = "surajsurya/docker-t"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
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
    stage('configure the image') {
      steps{
        sh "docker run -dit -p 33:80 surajsurya/docker-t:14"
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
    stage('configure the image') {
      agent {
          label 'server'
      }
      steps{
        sh "docker run -dit -p 33:80 surajsurya/docker-t:15"
      }
    } 
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}
