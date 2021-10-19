
import SwiftUI

protocol SurveyPageDelegate {
    func DoneSurvey()
}



struct SinglePageUI: View {

    var delegate:SurveyPageDelegate?

    @State var surveyinfo = SurveyInfo()
    @State var msdlconfigmodel = msdlConfigModel()
    @State var index:Int = 0
    
    public var body: some View {
        VStack(alignment: .center) {
      
            
//            Text(surveyinfo.name)
//
//            Text(String(msdlconfigmodel.questionnaire.count))
//
//            Text("Anket Sayfası")
//                .font(.system(size: 20))
//                .foregroundColor(Color.init(red: 0, green: 0.6, blue: 0.973))
//                .multilineTextAlignment(.center)
//                .padding(.top, 16)
//                .padding(.trailing, 8)
//                .padding(.leading, 8)
                
            
            QuestUI(config: msdlconfigmodel.questionnaire[index])
             
   

            Spacer()
            
            
            HStack{
                if (self.index > 0) {
                    Button(action: {
                        ClickPrev()
                    }){
                            HStack {
                                Text("Önceki")
                                    .font(.system(size: 16).bold())
                                    .foregroundColor(Color.white)
                            }
                            .padding()
                            .frame(width:100)
                            .background(Color.init(red: 0, green: 0.6, blue: 0.973))
                            .cornerRadius(26)
                    }
                }
      
                
                Spacer()
                
//                if index + 1 == msdlconfigmodel.questionnaire.count {
//                    Button(action: {
//                        ClickClose()
//                    }){
//                            HStack {
//                                Text("Kapat")
//                                    .font(.system(size: 16).bold())
//                                    .foregroundColor(Color.white)
//                            }
//                            .padding()
//                            .frame(width:100)
//                            .background(Color.init(red: 0, green: 0.6, blue: 0.973))
//                            .cornerRadius(26)
//                    }
//                }else{
                    Button(action: {
                        ClickNext()
                    }){
                            HStack {
                                Text("Sonraki")
                                    .font(.system(size: 16).bold())
                                    .foregroundColor(Color.white)
                            }
                            .padding()
                            .frame(width:100)
                            .background(Color.init(red: 0, green: 0.6, blue: 0.973))
                            .cornerRadius(26)
                    }
//                }
                
       
                
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
            
 

            

        }
    }


    func ClickPrev() {
        print("Önceki")
        if (self.index > 0){
            self.index = self.index - 1
        }
    }
    
    func ClickNext() {
 
        if index + 1 == msdlconfigmodel.questionnaire.count {
            print("Tamamlandı")
            delegate?.DoneSurvey()
        }else{
            print("Sonraki")
            self.index = self.index + 1
        }
        
    }
    
 
    
    
    
}


