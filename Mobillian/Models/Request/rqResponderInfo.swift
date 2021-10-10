
import Foundation

public class rqResponderInfo: Codable{

    var gender: eGenderFilter?
    var age: eAgeFilter?
    var location: mCoordinate?
    
    init() {
        self.gender = .all
        self.age = .all
        self.location = mCoordinate(lat: 0, lon: 0)
    }
    
}
