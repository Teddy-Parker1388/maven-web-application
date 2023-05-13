pipeline {
    agent any
    
    tools {
        maven "Maven3"
      
    } 
    
    stages{
        
 
        stage("Build Artifact") {
            agent {
  label 'myagent'
}
            steps{
                sh 'mvn package'
                
            }
        }
        
        
        stage("Echo Done") {
            agent {
  label 'agent2'
}
            steps{
                sh 'echo "WORK DONE"'
                
            }
        }
        
        
        
       
        
        
        
       
        
         
        
        
    }

    
    
}
