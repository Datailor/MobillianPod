
import Foundation


func ApiTest(apikey: String)->[String] {
    
    print("Call Mobillian ApiTest")

    let semaphore = DispatchSemaphore (value: 0)
    let request = GetApiAddress(subadress: "application/opentestget", ApiKey: apikey, httpMethod: "GET")
    var r:[String] = []
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        guard let data = data else {
            print(String(describing: error))
            semaphore.signal()
            return
        }
        
        do{
            r = try JSONDecoder().decode([String].self, from: data)
        }catch _ {
            let str = String(data: data, encoding: .utf8)
            print(str!)
        }
        semaphore.signal()
    }

    task.resume()
    semaphore.wait()
    
    return r
}
    
