//
//  Travis_Firebase_iOS_ExampleTests.swift
//  Travis-Firebase-iOS-ExampleTests
//
//  Created by Wikipedia Brown on 1/13/18.
//  Copyright © 2018 Wikipedia Brown. All rights reserved.
//

import XCTest
import Firebase

@testable import Travis_Firebase_iOS_Example

class Travis_Firebase_iOS_ExampleTests: XCTestCase {
    
    func testFirebaseBasicOpOnTheOps() {
        
        let expectation = XCTestExpectation(description: "Test basic Firebase read operation.")
        
        Database.database().reference().observe(.value) { (snapshot) in
            print(snapshot.value)
            XCTAssertTrue(snapshot.value != nil, "Not what you expected")
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)
        
    }
    
    
}
