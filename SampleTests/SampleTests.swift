//
//  SampleTests.swift
//  SampleTests
//
//  Created by gowri anguraj on 01/10/19.
//  Copyright © 2019 gowri anguraj. All rights reserved.
//

import XCTest
@testable import Sample

class SampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testHelloWorld() {
        var helloworld : String?
        XCTAssertNil(helloworld)
        helloworld = "hello world"
        XCTAssertEqual(helloworld, "hello world")
    
    }
    
   
    
}
