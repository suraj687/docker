pipeline {
  agent { label 'server' }
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
