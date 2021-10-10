
import Foundation

struct mLocation: Codable{
    
    let country: String?
    let state: String?
    let city: String?
    let district: String?
    
}


struct mCoordinate: Codable{
    
    let lat: Double
    let lon: Double
    
}
