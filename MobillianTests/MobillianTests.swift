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
        
        mobillian = Mobillian(apiId: "833CC8A3-1E19-4A6D-B451-5AB9BBA52839", apiKey: "3A0A012F-EFD9-49CF-A219-E79589230BCB")
        

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

    func testMainApiHealty() {
       
        let r: [String] = mobillian.GetApiTest()
        XCTAssertEqual(r.count, 3)
 
    }
    
    
    func testSurveyApiHealty() {
       
        let r: [String] = mobillian.GetSurveyApiTest()
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
    
    
    func testSurveyInfoConverter() {

        
        let sic: SurveyInfoConverter = SurveyInfoConverter()
        
        let r: mSurveyInfo = sic.Decode(jsonitem: "eyJpc2V4dGVybmFsIjpmYWxzZSwic291cmNlbGluayI6bnVsbCwicXVlc3Rjb3VudCI6MTUsImVzdGltYXRpb250aW1lIjo1LCJuZWVkbG9jYXRpb24iOnRydWUsImlzcXVvdGFvdXQiOmZhbHNlLCJjb250ZW50dHlwZSI6MSwiZGlzdHJ1YnV0aW9udHlwZSI6MSwibW9iaWxlZGlzcGxheSI6MCwid2ViZGlzcGxheSI6MCwiYmFja2dyb3VuZGNvbG9yIjpudWxsLCJjYXJkY29sb3IiOm51bGwsImFjdGlvbmJhcmNvbG9yIjpudWxsLCJzaG93YmFjayI6ZmFsc2UsInNob3dwcm9ncmVzcyI6ZmFsc2UsInJlbW92ZWRhdGF3aGVuYmFjayI6ZmFsc2UsInBhc3N3b3Jkc2VjdXJlIjpmYWxzZSwicGFzc3dvcmQiOm51bGwsImNvb2tpZXNlY3VyZSI6ZmFsc2UsImlwc2VjdXJlIjpmYWxzZSwicGhvbmV2YWxpZGF0aW9uIjpmYWxzZSwiY2FwdGNoYXByb3RlY3Rpb24iOmZhbHNlLCJtb2JpbGxpYW5zZWN1cmUiOmZhbHNlLCJ3ZWxjb21ldGV4dCI6bnVsbCwiZml0dGVzdCI6ZmFsc2UsImlkIjoxLCJuYW1lIjoiVHJpYWwgUHJvamVjdCAxIn0=")
        
    
        //let r: rsProject = GetProject(param: rqProject())

        XCTAssertEqual(r.id, 1)
        XCTAssertEqual(r.questcount, 15)
        
    }
    
    
    func testGetSurveyInfo_For1() {

        let sk: rqSurveyKey = rqSurveyKey()
        sk.surveykey = "eyJwYXJ0bmVyIjoxLCJzdXJ2ZXkiOjEsInJlc3BvbmRlbnRpZCI6Imt1QnNtR2NFVFBpdkVCa3hOdHYvVlE9PSIsImRpc3RydWJ1dGlvbnR5cGUiOjF9"
        
        let msi: mSurveyInfo = mobillian.GetSurveyInfo(surveykey: sk)
        
        XCTAssertEqual(msi.id, 1)
        XCTAssertEqual(msi.questcount, 15)
        
    }
    
    
    func testGetSurveyForm_For1() {

        let sk: rqSurveyKey = rqSurveyKey()
        sk.surveykey = "eyJwYXJ0bmVyIjoxLCJzdXJ2ZXkiOjEsInJlc3BvbmRlbnRpZCI6Imt1QnNtR2NFVFBpdkVCa3hOdHYvVlE9PSIsImRpc3RydWJ1dGlvbnR5cGUiOjF9"
        
        let msi:msdlConfigModel = mobillian.GetSurveyForm(surveykey: sk)
        
        //XCTAssertGreaterThan(msi.form.count, 1)
        XCTAssertEqual( msi.info?.name, "Fit Test")
        XCTAssertEqual( msi.info?.version, 3)
        XCTAssertEqual( msi.questionnaire.count, 9)

        if (msi.questionnaire.count > 0) {
            XCTAssertEqual( msi.questionnaire[0]?.GetId(), 1)
            XCTAssertEqual( msi.questionnaire[0]?.GetType(), eQuestType.single)
            if let att1 = msi.questionnaire[0] as? singleConfigModel {
                XCTAssertEqual( att1.options.count, 3)
                XCTAssertEqual( att1.options[0].value, 1)
                XCTAssertEqual( att1.options[0].label, "Erkek")
            }
        }
        
    
        
        if (msi.questionnaire.count > 1) {
            XCTAssertEqual( msi.questionnaire[1]?.GetId(), 2)
            XCTAssertEqual( msi.questionnaire[1]?.GetType(), eQuestType.info)
            XCTAssertEqual( msi.questionnaire[1]?.isHaveCondition(), true)
        }
        
        if (msi.questionnaire.count > 2) {
            XCTAssertEqual( msi.questionnaire[2]?.GetId(), 10)
            XCTAssertEqual( msi.questionnaire[2]?.GetType(), eQuestType.text)
            XCTAssertEqual( msi.questionnaire[2]?.isHaveCondition(), false)
        }
        
        if (msi.questionnaire.count > 4) {
            XCTAssertEqual( msi.questionnaire[4]?.GetId(), 12)
            XCTAssertEqual( msi.questionnaire[4]?.GetType(), eQuestType.numeric)
        }
        
        if (msi.questionnaire.count > 6) {
            XCTAssertEqual( msi.questionnaire[6]?.GetId(), 14)
            XCTAssertEqual( msi.questionnaire[6]?.GetType(), eQuestType.multi)
            if let att1 = msi.questionnaire[6] as? multiConfigModel {
                XCTAssertEqual( att1.options.count, 5)
                XCTAssertEqual( att1.options[0].value, 1)
                XCTAssertEqual( att1.options[0].label, "Milliyet")
            }
        }

//
    }
    
    
    
//    func testGetSurveyLink_Standart_1() {
//
//
//        let usr: rqResponderInfo = rqResponderInfo()
//        usr.age = .a18_24
//        usr.gender = .male
//        usr.location = mCoordinate(lat: 13, lon: 45)
//
//
//        let r: rsSurveyLink = mobillian.GetSurveyLink(surveytoken: "eyJpZCI6MSwibmwiOnRydWUsIm5nIjoxLCJuYSI6MSwicmlkIjoia3VCc21HY0VUUGl2RUJreE50di9WUT09IiwiZHQiOjF9", user: usr)
//
//        XCTAssertEqual(r.statuscode, 1)
//    }
//
    
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }



}
