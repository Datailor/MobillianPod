

import SwiftUI

struct MultiUI: View {
    
    var options: [OptionBasicConfigModel]
    
    
    var body: some View {
        
       // Text("MULTİ")
        

        
        ForEach(options,  id: \.id){
            TheOption in
            MultiListItem(isSelected: false, item: TheOption)
        }
        
  
        
    }
    
    
}

