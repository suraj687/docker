pipeline {
  agent any
  stages {
    stage('build'){ 
        steps{ 
             sh label: '', script: '''rm -rf dockerimg
             sudo docker build -t webimage:v1 .
             sudo docker image tag webimage:v1 surajsurya/test-world:latest'''
        }
     }
    stage('Publish') {
      when {
        branch 'master'
      }
      steps {
        withDockerRegistry([ credentialsId: "surajsurya", url: "" ]) {
          sh 'docker image push surajsurya/test-world:latest'
         
        }
      }
    }
  

    stage('test'){
        steps {
             echo 'this is test part'
            
        }
       }            
       }
     }
