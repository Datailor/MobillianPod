
#if canImport(FoundationNetworking)
    import FoundationNetworking
#endif

import UIKit

public final class Mobillian {

    let name = "Mobillian"
    let ApiKey: String
    let ApiId: String
    let UserId: String
    
    public var MainColor: CGColor
    
    public init(apiId: String, apiKey: String){
        self.ApiId = apiId
        self.ApiKey = apiKey
        self.UserId = ""
        self.MainColor = CGColor.init(red: 13, green: 145, blue: 187, alpha: 1)
    }
    
    public init(apiId: String, apiKey: String, userId: String){
        self.ApiId = apiId
        self.ApiKey = apiKey
        self.UserId = userId
        self.MainColor = CGColor.init(red: 13, green: 145, blue: 187, alpha: 1)
    }
    
    
    public func GetApiKey() -> String{
        return self.ApiKey
    }
    
    public func GetApiTest() -> [String]{
        return ApiTest(apikey: ApiKey)
    }
    
    public func GetSurveyApiTest() -> [String]{
        return SurveyApiTest(apikey: ApiKey)
    }
    
    
    public func GetProject(filter: rqProjectFilter?) -> rsProject{
        
        let p: rqProject = rqProject()
        p.apikey = ApiKey
        p.filter = filter
    
        return ApiGetProject(param: p)
    }
    
    public func GetSurveyLink(surveytoken: String, user: rqResponderInfo) -> rsSurveyLink{
        
        
        let p: rqSurveyLink = rqSurveyLink()
        p.apikey = ApiKey
        p.surveytoken = surveytoken
        p.user = user
    
    
        return ApiGetSurveyLink(param: p)
    
    }

    
    public func GetSurveyInfo(surveykey: rqSurveyKey) -> mSurveyInfo{
            
        let si:rqSurveyInfo = ApiGetSurveyInfo(param: surveykey)
        
        let sic: SurveyInfoConverter = SurveyInfoConverter()
        let r: mSurveyInfo = sic.Decode(jsonitem:si.info)
        

        return r
    
    }

    
    public func GetSurveyForm(surveykey: rqSurveyKey) -> msdlConfigModel{
            
        let si:rqSurveyForm = ApiGetSurveyForm(param: surveykey)
        
        print("Original")
        print(si.form)
        
        let data = si.form.data(using: .utf8)!
        print(data)
        
        var sictmp:msdlConfigModel_tmp = msdlConfigModel_tmp()
        var sic:msdlConfigModel
        do{
            sictmp = try JSONDecoder().decode(msdlConfigModel_tmp.self, from: data)
            sic = msdlConfigModel()
            sic.Assign(msdl: sictmp)
            return sic
        }catch _ {
            let str = String(data: data, encoding: .utf8)
            print(str!)
            return msdlConfigModel()
        }
        
//        return sic
        
    }

    
}
