
import Foundation

public class rqProjectFilter{

    
    let gender: eGenderFilter?
    let age: eAgeFilter?
    let location: mLocation?
    
    init() {
        self.gender = .all
        self.age = .all
        self.location = mLocation(country: "", state: "", city: "", district: "")
    }
    
    
}
