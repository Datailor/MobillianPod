
import SwiftUI

protocol LandingDelegate {
    func DoneLanding()
}


struct LandingStandart: View {

    var delegate:LandingDelegate?
    
    @State private var isToggle : Bool = false
    
    public var body: some View {
        VStack(alignment: .center) {
            
            VStack{
                Text("Zorunlu Bilgilendirme")
                    .font(.system(size: 20))
                    .foregroundColor(Color.init("AlertColor"))
                    .multilineTextAlignment(.center)
                    .padding(.top, 16)
                    .padding(.trailing, 8)
                    .padding(.leading, 8)
                
                Text("Doldurmak üzere olduğuz anket bir müşterimiz adında yapılmakta olup, anket sonuçları kişisel bilgileriniz ile eşleştirilmeden müşteri veya müşterilerimizi bilgilendirmek için kullanılacaktır.")
                    .font(.system(size: 14))
                    .foregroundColor(Color.init("AlertColor"))
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
                    .padding(.trailing, 8)
                    .padding(.leading, 8)
                
                Text("Anket güvenliği ve hakedişlerini garanti altına almak için bazı kişisel bilgileriniz alınacaktır, bunun için aşaüıdaki KVKK rıza metnini okuyarak onaylamanızı bekliyoruz.")
                    .font(.system(size: 14))
                    .foregroundColor(Color.init("AlertColor"))
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
                    .padding(.bottom, 16)
                    .padding(.trailing, 8)
                    .padding(.leading, 8)
            }
            .background(Color.init("AlertBackColor"))
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
                Text("Tahmini Anket Süresi")
                Spacer()
            }.background(Color.init("MobillianBlue"))
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
                Text("Telefon Doğrulama")
                Spacer()
            }.background(Color.init("MobillianBlue"))
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
                Text("Kitle Uygunluk Testi")
                Spacer()
            }.background(Color.init("MobillianBlue"))
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
                Text("Anket Soru Sayısı")
                Spacer()
            }.background(Color.init("MobillianBlue"))
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
                .toggleStyle(SwitchToggleStyle(tint: Color.init("MobillianGreen")))
                .frame(width:60)
                
                Text("Kişisel Verilerin Korunması Kanunu'na uygun olarak saklanacak verileriniz hakkında daha fazla bilgi sahibi olabilmek adına KVKK Polikamızı okuyunuz ve yandaki kutucuk ile onaylayınız.")
                    .font(.system(size: 12))
                
                Spacer()
            }
            .padding(.trailing, 8)
            .padding(.leading, 8)
            .padding(.top, 2)
            
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
                    .background(Color.init("MobillianGreen"))
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

