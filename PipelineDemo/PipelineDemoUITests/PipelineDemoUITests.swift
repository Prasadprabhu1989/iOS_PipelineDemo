//
//  PipelineDemoUITests.swift
//  PipelineDemoUITests
//
//  Created by Prasad Prabhu on 23/04/20.
//  Copyright © 2020 Prasad Prabhu. All rights reserved.
//

import XCTest

class PipelineDemoUITests: XCTestCase {
    var app : XCUIApplication!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app = XCUIApplication()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testUI(){
        app.launch()
        XCTAssertTrue(app.staticTexts["Test"].exists, "label is visible")
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
//"test -destination 'platform=iOS Simulator,name=iPhone 7,OS=10.3.1' -enableCodeCoverage YES CODE_SIGNING_REQUIRED=NO COMPILER_INDEX_STORE_ENABLE=NO CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES=YES"


//'test -destination \'platform=iOS Simulator,OS=13.4.1,name=iPhone 11 Pro Max\ -enableCodeCoverage YES | /usr/local/bin/xcpretty -r junit''
