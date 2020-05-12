//
//  PipelineDemoTests.swift
//  PipelineDemoTests
//
//  Created by Prasad Prabhu on 23/04/20.
//  Copyright © 2020 Prasad Prabhu. All rights reserved.
//

import XCTest
@testable import PipelineDemo

class PipelineDemoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    func testSum(){
        let a = 10
        XCTAssert(a == 10, "Sum")
    }
    func testNumber(){
           let a = 20
           XCTAssert(a == 20, "Number are equal")
       }


    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
