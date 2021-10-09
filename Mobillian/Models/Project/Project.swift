import Foundation

class Project: Codable{
    
    var surveytoken: String?
    var name: String?
    var description: String?
    var score: Int?

    var questcount: Int?
    var estimationtime: Int?
    
    var needlocation: Bool?
    var needgender: eGenderFilter
    var needage: eAgeFilter
    var needpersonaldata: Bool?
    var isquotaout: Bool?
    var type: String?
    
    
    init() {
        self.needage = .all
        self.needgender = .all
    }
        
    
}
