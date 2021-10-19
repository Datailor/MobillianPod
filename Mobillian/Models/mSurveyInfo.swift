
import Foundation


public class SurveyInfoObject: ObservableObject {
    
    @Published var info: mSurveyInfo
    
    init(){
        info = mSurveyInfo()
    }
    
}


class SurveyInfo {
    
    var name: String = ""
    
    var questcount: Int = 0
    var estimationtime: Int = 0
    var needlocation: Bool?
    var isquotaout: Bool?

    var phonevalidation: Bool?
    var fittest: Bool?
    
}



public class mSurveyInfo: Codable{
    
    var id: Int = 0
    var name: String = ""
    var isexternal: Bool?
    var sourcelink: String? = ""

    var questcount: Int = 0
    var estimationtime: Int = 0
    var needlocation: Bool?
    var isquotaout: Bool?

//    var contenttype: eProjectContentType
//    var distrubutiontype: eSurveyDistrubutionType

// //visual settings
    var mobiledisplay: Int?
    var webdisplay: Int?
    var backgroundcolor: String?
    var cardcolor: String?
    var actionbarcolor: String?
    var showback: Bool?
    var showprogress: Bool?
    var removedatawhenback: Bool?

// //security setings
    var passwordsecure: Bool?
    var password: String?
    var cookiesecure: Bool?
    var ipsecure: Bool?
    var phonevalidation: Bool?
    var captchaprotection: Bool?
    var mobilliansecure: Bool?
    var fittest: Bool?

    var welcometext:String?
    
    
    init() {
        //self.isexternal = false
        //self.sourcelink = ""
        //self.questcount = 0;
        //super.init()
    }
    
    
}


//
//public class rsProject: rsApiBase, Codable {
//    var projects: [Project]
//
//    override init() {
//        self.projects = []
//        super.init()
//     }
//}
