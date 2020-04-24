
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
	xcodeBuild appURL: '', 
	assetPackManifestURL: '', 
	buildDir: '', 
	buildIpa: true, bundleID: '', 
	bundleIDInfoPlistPath: '', 
	cfBundleShortVersionStringValue: '', 
	cfBundleVersionValue: '', 
	cleanBeforeBuild: false, 
	cleanResultBundlePath: false, 
	compileBitcode: false, 
	configuration: 'development', 
	developmentTeamID: '', 
	developmentTeamName: 'Tregaron India Holdings, LLC', 
	displayImageURL: '', 
	fullSizeImageURL: '', 
	ipaExportMethod: 'development',
 	ipaName: '$(VERSION)_$(BUILD_DATE)', 
	ipaOutputDirectory: '', 
	keychainId: '', 
	keychainPath: '${HOME}/Library/Keychains/login.keychain', 
	keychainPwd: hudson.util.Secret.fromString(''), 
	logfileOutputDirectory: '', 
	provisioningProfiles: [[provisioningProfileAppId: 'com.lockdown.app', 		provisioningProfileUUID: '4e3f3e97-d9d0-465e-9340-de6a3e0acc30']], 
	resultBundlePath: '', 
	sdk: '', 
	signingMethod: 'manual', 
	symRoot: '', 
	target: '', 
	thinning: '', 
	xcodeProjectFile: '', 
	xcodeProjectPath: 'PipelineDemo', 
	xcodeSchema: 'PipelineDemo', 
	xcodeWorkspaceFile: '', 
	xcodebuildArguments: 'test -destination \'platform=iOS Simulator,OS=13.4.1,name=iPhone 11 Pro Max\''
}
                   } 
post {
        always {
            junit 'build/reports/**/*.xml'
        }
    }
     }
 
post {

          always { 
echo 'Hi'
//sh 'ln -s test-results-unit.xml $WORKSPACE'
//junit allowEmptyResults: true, testResults: '**/test-results/*.xml'
//archiveArtifacts artifacts: '**/*.ipa', fingerprint: true
          //  junit 'build/reports/**/*.xml'
         } 
         success { 
  mail bcc: '', body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "SUCCESS CI: Project name -> ${env.JOB_NAME}", to: "nkdiyasys@gmail.com";

         } 
         failure { 
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

