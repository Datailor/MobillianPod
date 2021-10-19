
func GetSurveyApiAddress(subadress: String,  httpMethod: String = "POST") -> URLRequest {
    //ApiKey: String,
    
    let CloudAddress: String = "http://surveyapi.mobillian.co/"
    
    var request = URLRequest(url: URL(string: CloudAddress + subadress)!,timeoutInterval: Double.infinity)
    
    //request.addValue("application/json", forHTTPHeaderField: "Accept")
    request.addValue("*/*", forHTTPHeaderField: "Accept")
    request.addValue("false", forHTTPHeaderField: "Encryption")
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpMethod = httpMethod
    
    //request.addValue(ApiKey, forHTTPHeaderField: "apikey")
        
    
    return request
}


