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
	configuration: 'Release', 
	developmentTeamID: '', 
	developmentTeamName: 'Tregaron India Holdings, LLC', 
	displayImageURL: '', 
	fullSizeImageURL: '', 
	ipaExportMethod: 'development',
 	ipaName: '${BUILD_DATE}_${VERSION}', 
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
	xcodebuildArguments: "test -destination 'platform=iOS Simulator,name=iPhone 11 Pro Max,OS=13.4.1' -enableCodeCoverage YES CODE_SIGNING_REQUIRED=YES COMPILER_INDEX_STORE_ENABLE=NO CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES=YES"
	}
                   
} 

stage('Test') {
				steps {
					sh 'xcodebuild -project PipelineDemo/PipelineDemo.xcodeproj -scheme "PipelineDemo" -configuration "Debug" build test -destination "platform=iOS Simulator,name=iPhone 11 Pro Max,OS=13.4.1" -enableCodeCoverage YES clean test | /usr/local/bin/ocunit2junit',

step([$class: 'JUnitResultArchiver', allowEmptyResults: true, testResults: '**/test-reports/*.xml, healthScaleFactor: 1.0, fingerprint: true'])
				}
}
	stage('Upload') {
steps{
		echo 'Upload'
//xcodebuild -exportArchive -archivePath  $WORKSPACE/build/xcarchive  -exportPath "${WORKSPACE}/build/ipa"  -exportOptionsPlist  "${WORKSPACE}/build/plist"
 			sh 'xcrun altool --upload-app --type ios --file $WORKSPACE/PipelineDemo/build/Release-iphoneos/*.ipa --username "rajendrarao" --password "Coolraja1978@1"'

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

