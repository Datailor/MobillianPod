
#if canImport(FoundationNetworking)
    import FoundationNetworking
#endif


public final class Mobillian {

    let name = "Mobillian"
    let ApiKey: String
    let ApiId: String
    let UserId: String
    
    
    public init(apiId: String, apiKey: String){
        self.ApiId = apiId
        self.ApiKey = apiKey
        self.UserId = ""
    }
    
    public init(apiId: String, apiKey: String, userId: String){
        self.ApiId = apiId
        self.ApiKey = apiKey
        self.UserId = userId
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
