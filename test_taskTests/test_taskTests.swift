//
//  test_taskTests.swift
//  test_taskTests
//
//  Created by Admin on 11/16/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import XCTest
@testable import test_task

class test_taskTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let operation = Factorize()
        
        //test1
        XCTAssertEqual(operation.factor(x: 8), "2, 2, 2", "OK")
        
        //test2
        XCTAssert((operation.factor(x: 6) == "2, 3"))
        
        //test3
        XCTAssertTrue((operation.factor(x: 10) == "2, 5"), "All good")
        
        //test4
        XCTAssertEqual(operation.factor(x: 16), "2, 2, 2, 2")
        
        //test5
        XCTAssertEqual(operation.factor(x: 190), "2, 5, 19")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        
        let operation = Factorize()
        
        self.measure {
            // Put the code you want to measure the time of here.
            _ = operation.factor(x: 24)
            
        }
    }

}
