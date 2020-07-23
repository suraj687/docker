pipeline {
  agent any
  stages {
    stage('build'){ 
        steps{ 
             sh label: '', script: '''rm -rf dockerimg
             sudo docker build -t webimage:v1 .
             sudo docker run -dit -p 5050:80 webimage:v1'''
        }
     }  
    stage('test'){
        steps {
             echo 'this is test part'
            
        }
       }            
       }
     }
