pipeline {
    agent any
    
    tools {
        maven "Maven3"
      
    } 
    
    stages{
        
        stage("Git Checkout"){
            
            steps{
                
                echo "Performing git checkout"
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Teddy-Parker1388/maven-web-application']])
                
                
            }
  
        }
        
        stage("Build Artifact") {
            
            steps{
                sh 'mvn package'
                
            }
        }
        
        stage("Code Quality Check"){
            steps{
                withSonarQubeEnv("Sonarqube") {
                    
                    sh 'mvn sonar:sonar'
                 }
            }
        }
        
        stage("Upload to Nexus"){
            
            steps{
                sh 'mvn deploy'
                
            }
        }
        
        stage("Deplo to Dev Server") {
            steps{
                deploy adapters: [tomcat9(credentialsId: '741618f4-b2ed-4676-9b57-9e103703b0ba', path: '', url: 'http://54.91.94.135:8080/')], contextPath: null, war: '**/*.war'
                
            }
            
            
        }
             
        
        
    }

    
    
}
