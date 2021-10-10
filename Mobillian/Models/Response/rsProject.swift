

import Foundation


public class rsProject: rsApiBase, Codable {
    var projects: [Project]
    
    override init() {
        self.projects = []
        super.init()
     }
}





