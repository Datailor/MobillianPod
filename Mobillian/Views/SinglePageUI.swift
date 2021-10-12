
import SwiftUI

protocol SurveyPageDelegate {
    func DoneSurvey()
}



struct SinglePageUI: View {

    var delegate:SurveyPageDelegate?
    
    public var body: some View {
        VStack(alignment: .center) {
            
 
            Text("Anket Sayfası")
                .font(.system(size: 20))
                .foregroundColor(Color.init("MobillianBlue"))
                .multilineTextAlignment(.center)
                .padding(.top, 16)
                .padding(.trailing, 8)
                .padding(.leading, 8)
                
             
   

            
 
            Button(action: {
                ClickNext()
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

    
    func ClickNext() {
        print("Sonraki")
        delegate?.DoneSurvey()
    }
    
    
    
}


