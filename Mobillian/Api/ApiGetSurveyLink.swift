
import Foundation

#if canImport(FoundationNetworking)
    import FoundationNetworking
#endif


func ApiGetSurveyLink(param: rqSurveyLink)->rsSurveyLink {
    
    let semaphore = DispatchSemaphore (value: 0)
    
    var request = GetApiAddress(subadress: MobillianApiKeys.GetSurveyLink, ApiKey: param.apikey)

    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    let json = try! encoder.encode(param)
    let jsonStr = String(data: json, encoding: .utf8)
    print("Call Mobillian GetSurveyLink | " + jsonStr!)
    request.httpBody = json
    
    
    var rs:rsSurveyLink = rsSurveyLink()
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        guard let data = data else {
            print(String(describing: error))
            rs.isError = true;
//            rs.message = String(describing: error)
            semaphore.signal()
            return
        }

        do{
            rs = try JSONDecoder().decode(rsSurveyLink.self, from: data)
        }catch _ {
            let str = String(data: data, encoding: .utf8)
            print(str!)
            rs.isError = true;
//            rs.message = str!
        }
        semaphore.signal()
    }

    task.resume()
    semaphore.wait()
    
    return rs
}
    





