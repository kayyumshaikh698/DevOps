pipeline {
  agent any 
  environment {
                github_token_jenkins = credentials('github_token_jenkins')
            }
  stages {
    stage('clone'){
        steps{
            sh '''
            rm -rf git_practice
            git clone https://github.com/kayyumshaikh698/git_practice.git
            '''
        }
    }
    stage('git status'){
      steps{
        git config user.name "kayyum"
        git config user.email "kayyumshaikh698@gmail.com"
        sh '''
        if test -d git_practice ; 
        then 
           cd git_practice 
           git status 
           echo "hello friends" > jenkins.txt
           git add jenkins.txt
           git commit -m '4444'
           git push origin master 
           git ls-tree -r origin/master --name-only
        fi 
        '''
      }
    }
  }
}