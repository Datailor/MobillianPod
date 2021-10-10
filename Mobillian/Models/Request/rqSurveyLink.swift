
import Foundation

public class rqSurveyLink: Codable{

    
    var apikey: String
    var appid: String
    var userid: String
    var v: String
    
    var surveytoken: String
    var user: rqResponderInfo?
    
    init() {
        
        self.apikey = ""
        self.appid = ""
        self.userid = ""
        self.v = ""
        self.surveytoken = "" 

    }
    

}
