
import Foundation

public class SurveyInfoConverter{
    
    public func Decode(jsonitem: String) -> mSurveyInfo{
        var si: mSurveyInfo = mSurveyInfo()
        
        do{
            var data:Data = Data.init(base64Encoded: jsonitem)!

            si = try JSONDecoder().decode(mSurveyInfo.self, from: data)
        }catch _ {
            let data = Data(jsonitem.utf8)
            let str = String(data: data, encoding: .utf8)
            print(str!)
        }
        
        return si;
    }
    
    
    
}

