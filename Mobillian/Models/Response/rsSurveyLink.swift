

import Foundation

public class rsSurveyLink: rsApiBase, Codable {
    var surveytoken: String
    var surveykey: String
    var link: String
    var statuscode: Int
    var statusdesc: String
    var linktimeout: Int64
    
    override init() {
        self.surveytoken = ""
        self.surveykey = ""
        self.link = ""
        self.statuscode = 0
        self.linktimeout = 0
        self.statusdesc = ""
        
        super.init()
     }
}
