

import Foundation

struct rsProject{
    
    let surveytoken: String
    let name: String
    let description: String
    let score: Int

    let questcount: Int
    let estimationtime: Int
    
    let needlocation: Bool
    let needgender: eGenderFilter
    let needage: eAgeFilter
    let needpersonaldata: Bool
    let isquotaout: Bool
    let type: String
    
    
}
