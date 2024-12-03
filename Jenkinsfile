pipeline{
  agent any
  stages{
     stage("cleanup "){
       steps{
        sh "docker rm -f $(docker ps -aq) || true"
        sh "docker rmi $(docker images) || true" 
       }
    stage("create Image"){
        steps{
           sh "docker build -t my-python-app ."
        }
    }
    stage("create container "){
       steps{
         sh "docker run -d -p 3000:5500 --name my-running-app my-python-app"
       }
    }  
  }
}
