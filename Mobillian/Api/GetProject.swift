
import Foundation

#if canImport(FoundationNetworking)
    import FoundationNetworking
#endif


func GetProject(param: rqProject)->rsProject {
    
    print("Call GetProject")
    
    
    print("step11")
    print(Bundle.main.object(forInfoDictionaryKey: "CFBundleName"))
    print("step12")
    print(Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion"))
    print("step13")
    print(Bundle.main.object(forInfoDictionaryKey: "MobillianApiKey"))
    print("step14")
    
    
    let semaphore = DispatchSemaphore (value: 0)
    let parameters: [String: Any] = [
        "appid": param.appid,
        "userid": param.userid,
        "v": param.v,
        "filter": param.filter
    ]
    
    var request = GetApiAddress(subadress: MobillianApiKeys.GetProjects, withAuth: true)

    
    do {
        request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted) // pass dictionary to nsdata object and set it as request body
    } catch let error {
          print(error.localizedDescription)
    }
    
    let rs:rsProject = rsProject()
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        guard let data = data else {
            print(String(describing: error))
            rs.isError = true;
//            rs.message = String(describing: error)
            semaphore.signal()
            return
        }

        do{
            rs.projects = try JSONDecoder().decode([Project].self, from: data)
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
    





