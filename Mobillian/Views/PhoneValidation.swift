
import SwiftUI

protocol PhoneValidationDelegate {
    func DoneValidation()
}


struct PhoneValidation: View {

    var delegate:PhoneValidationDelegate?
    
    
    public var body: some View {
        VStack(alignment: .center) {
            

            Text("Telefon Doğrulama")
                .font(.system(size: 20))
                .foregroundColor(Color.init("MobillianBlue"))
                .multilineTextAlignment(.center)
                .padding(.top, 16)
                .padding(.trailing, 8)
                .padding(.leading, 8)
            
             
      
            
 
            Button(action: {
                ClickStartTheSurvey()
            }){
                    HStack {
                        Text("Telefon Doğrula")
                            .font(.system(size: 16).bold())
                            .foregroundColor(Color.white)
                    }
                    .padding()
                    .frame(width:UIScreen.main.bounds.size.width - 16)
                    .background(Color.init("MobillianGreen"))
                    .cornerRadius(26)
            }
            
            Spacer()
        }
    }
    
    
    func ClickStartTheSurvey() {
        print("Doğrula")
        delegate?.DoneValidation()
    }
    
    
}

