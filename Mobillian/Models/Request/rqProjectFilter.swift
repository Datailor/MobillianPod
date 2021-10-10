
import Foundation

public class rqProjectFilter: Codable{

    
    var gender: eGenderFilter?
    var age: eAgeFilter?
    let location: mLocation?
    
    init(gender: eGenderFilter = .all, age: eAgeFilter = .all) {
        self.gender = gender
        self.age = age
        self.location = mLocation(country: "", state: "", city: "", district: "")
    }
    
    
}
