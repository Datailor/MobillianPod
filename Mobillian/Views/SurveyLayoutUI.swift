
import SwiftUI

protocol SurveyLayoutDelegate {
    func ClickClose()
    func Completed()
    func Started()
    func QuotaOut(reason: String)
}


public struct SurveyLayoutUI: View,
        LandingDelegate,
        PhoneValidationDelegate,
        SurveyPageDelegate,
        LastPageDelegate {

    

    var delegate:SurveyLayoutDelegate?
    
    @State var activeStep: eSurveyStep = .landing
    
    public init() {
        activeStep = .landing
        
    }
    
    public var body: some View {
        VStack(alignment: .center) {
            HStack{
                Image("MobilianLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 44)
                Spacer()
                Button(action: {
                    ClickClose()
                }) {
                    Image("Close")
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .flipsForRightToLeftLayoutDirection(true)
                        .foregroundColor(.red)
                }
            }
            .padding(.trailing, 16)
            .padding(.leading, 16)
            
            if activeStep == .landing {
                LandingStandart(delegate:self)
            }else if activeStep == .phoneverification {
                PhoneValidation(delegate: self)
            }else if activeStep == .fittest {
            
            }else if activeStep == .survey {
                SinglePageUI(delegate: self)
            }else if activeStep == .completed {
                LastPage(delegate: self)
            }
         
            
            Spacer()
        }
    }
    
    
    func ClickClose() {
        delegate?.ClickClose()
    }
    
    func ClickStartTheSurvey() {
        delegate?.Started()
    }
    
//  DELEGATES
    func DoneLanding() {
        print("Tamamlandı on Survey Layout")
        self.activeStep = .phoneverification
        
    
//        Nereye gideceği anket bilgisi üzerinden alınacak
//        if(this.surveyinfo.phonevalidation)
//          this.activestep = eSurveyStep.phoneverification;
//        else{
//          if(this.surveyinfo.fittest)
//            this.activestep = eSurveyStep.fittest;
//          else
//            this.activestep = eSurveyStep.survey;
//        }
        
    }
    
    func DoneValidation() {
        print("Tamamlandı on Validate")
        self.activeStep = .survey
        
//        if(this.surveyinfo.fittest)
//           this.activestep = eSurveyStep.fittest;
//         else
//           this.activestep = eSurveyStep.survey;
         
        
    }
    
    
    func DoneSurvey() {
        print("Tamamlandı on Survey")
        self.activeStep = .completed
        //delegate?.Completed()
    }
    
    func CloseLastPage() {
        delegate?.Completed()
    }
    
    
}


//#if DEBUG
//struct SurveyUI_Previews: PreviewProvider {
//    static var previews: some View {
//        SurveyLayoutUI()
//    }
//}
//#endif
