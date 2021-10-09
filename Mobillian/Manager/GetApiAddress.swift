
import Foundation

func GetApiAddress(subadress: String, withAuth: Bool, httpMethod: String = "POST") -> URLRequest {
    
    let CloudAddress: String = "http://api.mobillian.co/application/"
    
    var request = URLRequest(url: URL(string: CloudAddress + subadress)!,timeoutInterval: Double.infinity)
    
    
    request.addValue("application/json", forHTTPHeaderField: "Accept")
    request.addValue("false", forHTTPHeaderField: "Encryption")
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpMethod = httpMethod //"POST"
    
    if withAuth {
//        request.addValue("Bearer 18a13ca7-c9e6-4b5a-965c-26c72ec71a98", forHTTPHeaderField: "Authorization")
        //let defaults = UserDefaults.standard
        //print("Token Eklendi:" + defaults.string(forKey: GeneralKeys.Token)!)
        
        print("Api Key:", Bundle.main.object(forInfoDictionaryKey: "MobillianApiKey"))
        
        
//        request.addValue("Bearer " +  defaults.string(forKey: GeneralKeys.Token)!, forHTTPHeaderField: "Authorization")
        
        
        
    }

    
    return request
}
