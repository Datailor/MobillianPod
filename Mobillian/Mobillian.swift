
public final class Mobillian {

    let name = "Mobillian"
    let ApiKey: String
    
    
    public init(apikey: String){
        self.ApiKey = apikey
    }
    
    
    public func GetProject(filter: rqProjectFilter) -> [rsProject]{
        
        let rs:[rsProject] = []
        return rs
    
    }
    
    
    public func add(a: Int, b: Int) -> Int {
        return a + b
    }
    
    public func sub(a: Int, b: Int) -> Int {
        return a - b
    }
    
    
    
}
