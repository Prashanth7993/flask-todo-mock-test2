pipeline {
  agent any
    stages {
        stage('clone') {
            steps {
                git branch: 'master', url:'https://github.com/Prashanth7993/flask-todo-mock-test2.git'
            }
        }
        stage('Build Image & Push into Docker hub'){
            steps{
                 sh 'docker build -t flask-app .'
                 echo "Docker image build sucessfully completed."
                    withCredentials([usernamePassword(credentialsId: 'Docker_Hub_Credentials', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                        sh 'docker login -u $DOCKER_USER -p $DOCKER_PASS'
                        sh 'docker tag flask-app  $DOCKER_USER/todo-mock-test-2:v2'
                        sh 'docker push $DOCKER_USER/todo-mock-test-2:v2
                    }
            }
        }    
    }
}
