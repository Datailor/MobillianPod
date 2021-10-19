

import SwiftUI

protocol LastPageDelegate {
    func CloseLastPage()
}



struct LastPage: View {

    var delegate:LastPageDelegate?
    
    public var body: some View {
        VStack(alignment: .center) {
            
            Spacer()
            
            Text("Ankete katılımınız için teşekkür ederiz.")
                .font(.system(size: 20))
                .foregroundColor(Color.init(red: 0, green: 0.6, blue: 0.973))
                .multilineTextAlignment(.center)
                .padding(.top, 16)
                .padding(.trailing, 8)
                .padding(.leading, 8)

            Spacer()
 
            Button(action: {
                ClickClose()
            }){
                HStack {
                    Text("Kapat")
                        .font(.system(size: 16).bold())
                        .foregroundColor(Color.white)
                }
                .padding()
                .frame(width:UIScreen.main.bounds.size.width - 16)
                .background(Color.init(red: 0, green: 0.6, blue: 0.973))
                .cornerRadius(26)
            }
            .padding(.bottom, 16)

        }
    }

    
    func ClickClose() {
        delegate?.CloseLastPage()
    }
    
    
    
}



