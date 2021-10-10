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
        mobillian = Mobillian(apikey: "3A0A012F-EFD9-49CF-A219-E79589230BCB")
        
//        self.appid = "833CC8A3-1E19-4A6D-B451-5AB9BBA52839"
//        self.userid = "kuBsmGcETPivEBkxNtv/VQ=="
        
    }

   // #mob1934c.
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
//    func testAdd() {
//        XCTAssertEqual(mobillian.add(a: 1, b: 1), 2)
//    }
//
//    func testSub() {
//        XCTAssertEqual(mobillian.sub(a: 2, b: 1), 1)
//    }
    
    
//    func test_ReadApiKey() {
//
//
//
//        print("step2")
//
//        print("step11")
//        print(Bundle.main.object(forInfoDictionaryKey: "CFBundleName"))
//        print("step12")
//        print(Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion"))
//        print("step13")
//        print(Bundle.main.object(forInfoDictionaryKey: "MobillianApiKey"))
//        print("step14")
//
////        let deger:String =  Bundle.main.object(forInfoDictionaryKey: "MobillianApiKey") as! String
////        print(deger)
//
//
//        //let deger:String = Bundle.main.object(forInfoDictionaryKey: "MobillianApiKey") as! String as! String
//        //XCTAssertEqual(deger, "3A0A012F-EFD9-49CF-A219-E79589230BCB")
//
//
//
//    }

    func testApiHealty() {
       
        let r: [String] = mobillian.GetApiTest()
        XCTAssertEqual(r.count, 3)
 
    }
    
    
    func testGetProject_StandartAll_FilterNil() {

        let r: rsProject = mobillian.GetProject(filter: nil)
        //let r: rsProject = GetProject(param: rqProject())

        XCTAssertGreaterThan(r.projects.count, 1)
    }
    
    
    func testGetProject_StandartAll_FilterForMale() {

        let r: rsProject = mobillian.GetProject(filter: rqProjectFilter(gender: .male, age: .all))
        //let r: rsProject = GetProject(param: rqProject())

        XCTAssertGreaterThan(r.projects.count, 0)
    }
    
    
    func testGetSurveyLink_Standart_1() {

        
        let usr: rqResponderInfo = rqResponderInfo()
        usr.age = .a18_24
        usr.gender = .male
        usr.location = mCoordinate(lat: 13, lon: 45)
        
        
        let r: rsSurveyLink = mobillian.GetSurveyLink(surveytoken: "eyJpZCI6MSwibmwiOnRydWUsIm5nIjoxLCJuYSI6MSwicmlkIjoia3VCc21HY0VUUGl2RUJreE50di9WUT09IiwiZHQiOjF9", user: usr)
     
        XCTAssertEqual(r.statuscode, 1)
    }
 
    
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }



}
