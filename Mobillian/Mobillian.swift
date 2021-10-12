
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
    

    
}
