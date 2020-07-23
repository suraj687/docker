pipeline {
  agent any
   stages {
   stage('build') 
           steps   { 
             docker build -t web:v1 .
             }
            } 
   stage('test') {
           steps {
             echo 'this is test part'
            }
           }            
         }
      }
