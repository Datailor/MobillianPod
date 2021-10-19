
import SwiftUI

protocol LandingDelegate {
    func DoneLanding()
}


struct LandingStandart: View {

    var delegate:LandingDelegate?
    
    @State private var isToggle : Bool = false
//    @State var surveyinfo: SurveyInfoObject
    @State var surveyinfo = SurveyInfo()
    
    
    
    public var body: some View {
        VStack(alignment: .center) {

            Text(surveyinfo.name)
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
                .padding(.top, 8)
                .padding(.trailing, 8)
                .padding(.leading, 8)
            
            VStack{

                Text("Zorunlu Bilgilendirme")
                    .font(.system(size: 20))
                    .foregroundColor(Color.init(red: 0.773, green: 0.055, blue: 0.161))
                    .multilineTextAlignment(.center)
                    .padding(.top, 16)
                    .padding(.trailing, 8)
                    .padding(.leading, 8)
                
                Text("Doldurmak üzere olduğuz anket bir müşterimiz adında yapılmakta olup, anket sonuçları kişisel bilgileriniz ile eşleştirilmeden müşteri veya müşterilerimizi bilgilendirmek için kullanılacaktır.")
                    .font(.system(size: 14))
                    .foregroundColor(Color.init(red: 0.773, green: 0.055, blue: 0.161))
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
                    .padding(.trailing, 8)
                    .padding(.leading, 8)
                
                Text("Anket güvenliği ve hakedişlerini garanti altına almak için bazı kişisel bilgileriniz alınacaktır, bunun için aşaüıdaki KVKK rıza metnini okuyarak onaylamanızı bekliyoruz.")
                    .font(.system(size: 14))
                    .foregroundColor(Color.init(red: 0.773, green: 0.055, blue: 0.161))
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
                    .padding(.bottom, 16)
                    .padding(.trailing, 8)
                    .padding(.leading, 8)
            }
            .background(Color.init(red: 1.0, green: 0.322, blue: 0.322, opacity: 0.4))
            .cornerRadius(16)
            .padding(.trailing, 8)
            .padding(.leading, 8)

            
            HStack{
   
                Image(systemName: "clock.fill")
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .padding(.top, 8)
                    .padding(.bottom, 8)
                    .padding(.trailing, 8)
                    .padding(.leading, 8)
                VStack(alignment: .leading){
                    Text("Tahmini Anket Süresi")
                        .font(.system(size: 15))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                    Text(String(surveyinfo.estimationtime) + " min.")
                        .font(.system(size: 18))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                }
                Spacer()
            }.background(Color.init(red: 0, green: 0.6, blue: 0.973))
            .cornerRadius(16)
            .padding(.trailing, 8)
            .padding(.leading, 8)
        
            
            HStack{
                Image(systemName: "iphone")
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .padding(.top, 8)
                    .padding(.bottom, 8)
                    .padding(.trailing, 8)
                    .padding(.leading, 8)
                VStack(alignment: .leading){
                    Text("Telefon Doğrulama")
                        .font(.system(size: 15))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                    if (surveyinfo.phonevalidation == true) {
                        Text("Evet")
                            .font(.system(size: 18))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                    }else{
                        Text("Hayır")
                            .font(.system(size: 18))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                    }
                }
                Spacer()
            }.background(Color.init(red: 0, green: 0.6, blue: 0.973))
            .cornerRadius(16)
            .padding(.trailing, 8)
            .padding(.leading, 8)
            .padding(.top, 2)
            
            
            HStack{
                Image(systemName: "person.fill.checkmark")
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .padding(.top, 8)
                    .padding(.bottom, 8)
                    .padding(.trailing, 8)
                    .padding(.leading, 8)

                VStack(alignment: .leading){
                    Text("Kitle Uygunluk Testi")
                        .font(.system(size: 15))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                    if (surveyinfo.fittest == true) {
                        Text("Evet")
                            .font(.system(size: 18))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                    }else{
                        Text("Hayır")
                            .font(.system(size: 18))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                    }
                }
                
                Spacer()
            }.background(Color.init(red: 0, green: 0.6, blue: 0.973))
            .cornerRadius(16)
            .padding(.trailing, 8)
            .padding(.leading, 8)
            .padding(.top, 2)
            
            
            HStack{
                Image(systemName: "number.square.fill")
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .padding(.top, 8)
                    .padding(.bottom, 8)
                    .padding(.trailing, 8)
                    .padding(.leading, 8)

                VStack(alignment: .leading){
                    Text("Anket Soru Sayısı")
                        .font(.system(size: 15))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                    Text(String(surveyinfo.questcount))
                        .font(.system(size: 18))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                }
                Spacer()
            }.background(Color.init(red: 0, green: 0.6, blue: 0.973))
            .cornerRadius(16)
            .padding(.trailing, 8)
            .padding(.leading, 8)
            .padding(.top, 2)
            
            HStack{
                Toggle(isOn: $isToggle){
                        Text("Switch")
                           .font(.title)
                           .foregroundColor(Color.white)
                }
                .toggleStyle(SwitchToggleStyle(tint: Color.init(red: 0.549, green: 0.847, blue: 0)))
                .frame(width:60)
                
                Text("Kişisel Verilerin Korunması Kanunu'na uygun olarak saklanacak verileriniz hakkında daha fazla bilgi sahibi olabilmek adına KVKK Polikamızı okuyunuz ve yandaki kutucuk ile onaylayınız.")
                    .font(.system(size: 12))
                
                Spacer()
            }
            .padding(.trailing, 8)
            .padding(.leading, 8)
            .padding(.top, 2)
            
            
            if (isToggle){
                Button(action: {
                    ClickStartTheSurvey()
                }){
                    HStack {
                        Text("Ankete Başla")
                            .font(.system(size: 16).bold())
                            .foregroundColor(Color.white)
                    }
                    .padding()
                    .frame(width:UIScreen.main.bounds.size.width - 16)
                    .background(Color.init(red: 0.549, green: 0.847, blue: 0))
                    .cornerRadius(26)
                }
            }else{
                HStack {
                    Text("Ankete Başla")
                        .font(.system(size: 16).bold())
                        .foregroundColor(Color.white)
                }
                .padding()
                .frame(width:UIScreen.main.bounds.size.width - 16)
                .background(Color.init(red: 0.549, green: 0.847, blue: 0, opacity: 0.3))
                .cornerRadius(26)
            }
            Spacer()
        }
    }
    
    
    func ClickStartTheSurvey() {
        print("Tamamlandı on LandingStandart")
        delegate?.DoneLanding()
    }
    
    
}

