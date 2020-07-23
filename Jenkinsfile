pipeline {
  agent none
  stages {
    stage('build') {
        agent any
        steps{ 
             sh label: '', script: '''rm -rf dockerimg
             docker build -t webimage:v1 .'''
      }
     }  
    stage('test'){
        agent any
        steps {
             echo 'this is test part'
            
           }
         }            
       }
     }
