
import SwiftUI

struct TextUI: View {
    @ObservedObject var value = TextBindingManager(limit: 30)
     
    
    
    var body: some View {
        
        TextField("", text: $value.text)
            .textFieldStyle(.roundedBorder)
//            .textFieldStyle( value.text.isEmpty ? OvalTextFieldStyle(isEmpty: true):OvalTextFieldStyle(isEmpty: false))
            //.font(.custom("EuclidCircularB-Regular", size: 16))
            .padding(.top, 8)
            .padding(.leading, 16)
            .padding(.trailing, 16)
        
        
        
    }
    
    
}

