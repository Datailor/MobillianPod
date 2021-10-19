
public class msdlConfigModel_tmp: Codable {
    
    var info: infoMainConfigModel? // = infoMainConfigModel()
    var questionnaire: [allConfigModel] = []
    
    public init(){
    
    }
    
}

public class msdlConfigModel {
    
    var info: infoMainConfigModel? 
    var questionnaire: [IQuestConfig] = []
    
//    public init(){
//
//    }
    
    
    public func Assign(msdl: msdlConfigModel_tmp){
        self.info = msdl.info
        
        for i in 0..<msdl.questionnaire.count  {
            self.questionnaire.append(msdl.questionnaire[i].GetQuest())
        }
    }
    
    
    
    
}




//class SurveyForm {
//
//    var name: String = ""
//
//    var questcount: Int = 0
//    var estimationtime: Int = 0
//    var needlocation: Bool?
//    var isquotaout: Bool?
//
//    var phonevalidation: Bool?
//    var fittest: Bool?
//
//}

