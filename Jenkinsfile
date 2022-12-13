pipeline {
    agent any
//     tools {
// //         maven "Maven"
// //         jdk "JDK"
//     }
    stages {
        stage('Clean') {
            steps {
                         withMaven(maven: 'Default',jdk: 'Java 10') {
                             sh "echo JAVA_HOME=$JAVA_HOME"
                             sh "mvn clean"
                         }
                     }
                 }

//         stage('Initialize'){
//             steps{
// //                 echo "PATH = ${M2_HOME}/bin:${PATH}"
//                 echo "M2_HOME = /opt/maven"
// //                 sh 'sudo apt-get install openjdk-11-jdk'
//             }
//         }
//         stage('Build') {
//             steps {
//                 dir("/var/jenkins_home/workspace/test") {
//                 sh 'mvn -B -DskipTests clean package'
//                 }
//             }
//         }
     }
    post {
       always {
          junit(
            allowEmptyResults: true,
            testResults: '*/test-reports/.xml'
          )
      }
   }
}