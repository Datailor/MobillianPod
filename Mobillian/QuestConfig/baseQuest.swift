public class baseQuest{

    public var id: Int = 0
    public var dbvalue: String = ""
    public var text: String = ""
    public var required: Bool? = true
    public var type: eQuestType = .none
    public var desc: String? = ""

    var condition: conditionModel?
    
    init() {

    }
    
    
    public func GetId()->Int{
        return self.id;
    }

   public func GetText()->String{
       return self.text;
   }
    
    public func GetType()->eQuestType{
        return self.type;
    }
    
    public func GetDBValue()->String{
        return self.dbvalue;
    }
    
    public func isHaveCondition() -> Bool{
        if(self.condition != nil){
            return true
        }
        else{
            return false;
        }
    }

    public func GetCondition() -> conditionModel{
        return self.condition!;
    }

}
