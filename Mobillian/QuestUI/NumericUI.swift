
import SwiftUI

struct NumericUI: View {
    @ObservedObject var value = TextBindingManager(limit: 30)
    
    var body: some View {
        
        TextField("", text: $value.text)
            .textFieldStyle(.roundedBorder)
            .padding(.top, 8)
            .padding(.leading, 16)
            .padding(.trailing, 16)
        
    }
    
    
}

