
import Foundation

class rqProject: Codable{

    var apikey: String
    var appid: String
    var userid: String
    var v: String
     
    var filter: rqProjectFilter?
   
    init() {
        
        self.apikey = ""
        self.appid = ""
        self.userid = ""
        self.v = ""
        
    }
    
}
