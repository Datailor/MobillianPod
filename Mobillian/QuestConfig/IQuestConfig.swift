
import Foundation

public protocol IQuestConfig: Codable {

    func GetId()->Int
    func GetText()->String
    
    func GetType()->eQuestType
//    func GetJSON()->Any
//    func GetDBValue()->String
//
//    func SetText(text: String)
//    func SetDBValue(value: String)
//    func SetId(value: Int)
//
    func isHaveCondition()->Bool
    func GetCondition()->conditionModel

    //Config tanımını geçerli olup olmasığını değilse hatayı çevirir.
    //func ValidateConfig()->UIValidMessage

    
}


public class allConfigModel: Codable{

    public var id: Int?
    public var dbvalue: String?
    public var text: String = ""
    public var required: Bool? = true
    public var type: String? = ""
    public var desc: String? = ""
    
    var condition: conditionModel?
    
    //test
    public var maxlength: Int? = 0
    public var minlength: Int? = 0
    public var placeholder: String? = ""
    
    //numeric
    var maxvalue: Int?
    var minvalue: Int?
    var decimallimit: Int?
   
    //info
    var infotype: String? = ""
    var flagcode: Int? = 0
    
    //single-multi
    var options: [OptionBasicConfigModel]? = []


    
    init() {

    }
    
    
    public func GetQuest() -> IQuestConfig{
        switch type {
        case "text":
            print("text quest")
            let q: textConfigModel = textConfigModel()
            q.id = self.id!
            q.dbvalue = self.dbvalue!
            q.text = self.text
            q.required = self.required
            q.type = eQuestType.text
            q.desc = self.desc
            q.condition = self.condition
            
            q.maxlength = self.maxlength
            q.minlength = self.minlength
            q.placeholder = self.placeholder
            return q

        case "numeric":
            print("numeric quest")
            let q: numericConfigModel = numericConfigModel()
            q.id = self.id!
            q.dbvalue = self.dbvalue!
            q.text = self.text
            q.required = self.required
            q.type = eQuestType.numeric
            q.desc = self.desc
            q.condition = self.condition
            
            q.maxvalue = self.maxvalue
            q.minvalue = self.minvalue
            q.decimallimit = self.decimallimit
            q.placeholder = self.placeholder
            return q

        case "single":
            print("single quest")
            let q: singleConfigModel = singleConfigModel()
            q.id = self.id!
            q.dbvalue = self.dbvalue!
            q.text = self.text
            q.required = self.required
            q.type = eQuestType.single
            q.desc = self.desc
            q.condition = self.condition
            
            q.options = self.options!
            
            return q
            
            
        case "multi":
            print("multi quest")
            let q: multiConfigModel = multiConfigModel()
            q.id = self.id!
            q.dbvalue = self.dbvalue!
            q.text = self.text
            q.required = self.required
            q.type = eQuestType.multi
            q.desc = self.desc
            q.condition = self.condition
            
            q.options = self.options!
            
            return q
            
        case "info":
            print("info quest")
            let q: infoConfigModel = infoConfigModel()
            q.id = self.id!
            q.dbvalue = self.dbvalue!
            q.text = self.text
            q.required = self.required
            q.type = eQuestType.info
            q.desc = self.desc
            q.condition = self.condition
            
            q.infotype = self.infotype
            q.flagcode = self.flagcode
            return q
            
        default:
            let q: infoConfigModel = infoConfigModel()
            q.id = self.id!
            q.dbvalue = self.dbvalue!
            q.text = self.text
            q.required = self.required
            q.type = eQuestType.info
            q.desc = self.desc
            q.condition = self.condition
            
            q.infotype = "none"
            q.flagcode = 1
            return q
        }
    }
    
}
