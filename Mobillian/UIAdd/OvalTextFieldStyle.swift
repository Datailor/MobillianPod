
import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    let isEmpty: Bool
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            //.strokeBorder(style: StrokeStyle(lineWidth: 90))
            .padding(15)
            //.background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
            //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            .cornerRadius(28)
            .foregroundColor(Color.init(red: 0.99, green: 0.99, blue: 0.99))
            .overlay(RoundedRectangle(cornerRadius: 28)
                        .stroke(isEmpty ?
                                Color.init(red: 0.99, green: 0.99, blue: 0.99)
                                    : Color.init(red: 0.49, green: 0.49, blue: 0.49)
                        , lineWidth: 1))
            //.font(.custom("EuclidCircularB-Regular", size: 16))
            
    }
}

