
def xcodeproj = 'PipelineDemo.xcodeproj' // Path to the xcodeproj
def xcarchive_name = "PipelineDemo.xcarchive" // Name of the archive to build
def build_scheme = 'PipelineDemo' // Scheme to build the app
def test_scheme = 'PipelineDemo' // Scheme to build tests
def simulator_device = 'iPhone 7' // Name of the device type to use for tests


pipeline {
	agent any
		stages {
			stage('Build') {

				steps {
	sh 'xcodebuild -project PipelineDemo/PipelineDemo.xcodeproj -scheme "PipelineDemo" -configuration "Debug" build test -destination "platform=iOS Simulator,name=iPhone 11 Pro Max,OS=13.4.1" -enableCodeCoverage YES clean test | /usr/local/bin/ocunit2junit'
	}
                   
} 

stage('Test') {
				steps {
					
				}
}
	stage('Upload') {
steps{
		echo 'Upload'
//xcodebuild -exportArchive -archivePath  $WORKSPACE/build/xcarchive  -exportPath "${WORKSPACE}/build/ipa"  -exportOptionsPlist  "${WORKSPACE}/build/plist"
 	

}

}
	}



 
post {

          always { 
echo 'Hi'
//sh 'ln -s test-results-unit.xml $WORKSPACE'
//junit allowEmptyResults: true, testResults: '**/test-results/*.xml'
//archiveArtifacts artifacts: '**/*.ipa', fingerprint: true
           // junit allowEmptyResults: true, testResults: '**/test-reports/*.xml'
//junit 'build/test-reports/*.xml'

step([$class: 'JUnitResultArchiver', allowEmptyResults: true, testResults: '**/test-reports/*.xml, healthScaleFactor: 1.0, fingerprint: true'])

         } 
         success { 
  mail bcc: '', body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "SUCCESS CI: Project name -> ${env.JOB_NAME}", to: "nkdiyasys@gmail.com";

         } 

         failure { 
step([$class: 'JUnitResultArchiver', allowEmptyResults: true, testResults: '**/test-reports/*.xml, healthScaleFactor: 1.0, fingerprint: true'])
           mail bcc: '', body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "ERROR CI: Project name -> ${env.JOB_NAME}", to: "nkdiyasys@gmail.com"; 
       } 
         unstable { 
mail bcc: '', body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "UNSTABLE CI: Project name -> ${env.JOB_NAME}", to: "nkdiyasys@gmail.com"; 
         } 
         changed { 
mail bcc: '', body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "PREVIOUSLY FAILING BUT IS NOW SUCCESSFUL CI: Project name -> ${env.JOB_NAME}", to: "nkdiyasys@gmail.com";
}
                   } 

}

