//
//  MobillianTests.swift
//  MobillianTests
//
//  Created by Ahmet Han on 20.09.2021.
//

import XCTest
@testable import Mobillian

class MobillianTests: XCTestCase {

    var mobillian: Mobillian!
    
    override func setUp() {
        mobillian = Mobillian()
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAdd() {
        XCTAssertEqual(mobillian.add(a: 1, b: 1), 2)
    }
    
    func testSub() {
        XCTAssertEqual(mobillian.sub(a: 2, b: 1), 1)
    }
 
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }



}
