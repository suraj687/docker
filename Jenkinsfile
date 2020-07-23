pipeline {
  agent any
   stages {
   stage('build') 
           steps   { 
             sh 
             docker build -t webimage:v1 .

             }
            } 
   stage('test') {
           steps {
             echo 'this is test part'
            }
           }            
         }
      }
