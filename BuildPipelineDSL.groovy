pipelineJob("BuildPipeline"){
  definition{
    cpsScm{
      scm{
        git{
          remote{
          	url("https://github.com/mcarajatchawla/DemoApp.git")
            credentials("GitHubToken")
            
          }
          branches("master")
          scriptPath("jenkinsfile")
        }
      }
    }
    
  }
}
