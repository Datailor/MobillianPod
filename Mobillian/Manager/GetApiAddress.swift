
import Foundation

func GetApiAddress(subadress: String, ApiKey: String, httpMethod: String = "POST") -> URLRequest {
    
    let CloudAddress: String = "http://api.mobillian.co/"
    
    var request = URLRequest(url: URL(string: CloudAddress + subadress)!,timeoutInterval: Double.infinity)
    
    //request.addValue("application/json", forHTTPHeaderField: "Accept")
    request.addValue("*/*", forHTTPHeaderField: "Accept")
    request.addValue("false", forHTTPHeaderField: "Encryption")
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpMethod = httpMethod
    
    request.addValue(ApiKey, forHTTPHeaderField: "apikey")
        
    
    return request
}
