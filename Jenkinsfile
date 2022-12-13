pipeline {
    agent any
    tools {
        maven "Maven"
        jdk "Java 11"
    }
    stages {
//         stage('Clean') {
//             steps {
//                  withMaven(maven: 'Default',jdk: 'Java 11') {
//                      sh "echo JAVA_HOME=$JAVA_HOME"
//                      sh 'mvn -B -DskipTests clean package'
//                  }
//              }
//          }

        stage('Initialize'){
            steps{
                echo "PATH = ${M2_HOME}/bin:${PATH}"
                echo "M2_HOME = /opt/maven"
//                 sh 'sudo apt-get install openjdk-11-jdk'
            }
        }
        stage('Build executable jar') {
            steps {
                dir("/var/jenkins_home/workspace/test") {
                    sh 'mvn -B -DskipTests clean package'
                }
            }
        }
        stage('Build docker image') {
            steps {
                dir("/var/jenkins_home/workspace/test") {
                    sh 'docker build -t spring-boot-docker .'
                }
            }
        }
     }
    post {
       always {
//           junit(
//             allowEmptyResults: true,
//             testResults: '*/test-reports/.xml'
//           )
        cleanWs()
      }
   }
}