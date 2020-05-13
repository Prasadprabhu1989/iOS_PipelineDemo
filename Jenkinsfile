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
	echo 'Build'
sh 'xcodebuild -project PipelineDemo/PipelineDemo.xcodeproj -scheme "PipelineDemo" -configuration "Debug" build test -destination "platform=iOS Simulator,name=iPhone 11 Pro Max,OS=13.4.1" -enableCodeCoverage YES clean test | /usr/local/bin/ocunit2junit'


	}
                   
} 



	}



 
