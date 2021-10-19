
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
    var surveykey: String
    
    @State var activeStep: eSurveyStep = .landing
    @State var surveyinfo = SurveyInfo()
    @State var msdlconfigmodel = msdlConfigModel()
    //@State var surveyform = SurveyForm()
    
 
    public init(surveykey: String) {
        self.surveykey = surveykey
        self.activeStep = .landing
        self.GetSurveyInfo()
    }
    
    public var body: some View {
        VStack(alignment: .center) {
            if activeStep == .landing {
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
            }else{
                HStack{
                    VStack(alignment: .leading){
                        Image("MobilianLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 36)
                        Text(surveyinfo.name)
                            .multilineTextAlignment(.leading)
                            .padding(.top, -8)
                    }
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
            }
            
      
            if activeStep == .landing {
                LandingStandart(delegate:self, surveyinfo: surveyinfo)
            }else if activeStep == .phoneverification {
                PhoneValidation(delegate: self)
            }else if activeStep == .fittest {
            
            }else if activeStep == .survey {
                SinglePageUI(delegate: self, surveyinfo: surveyinfo, msdlconfigmodel: msdlconfigmodel)
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
    
    
    func GetSurveyInfo(){
        
        var mobillian: Mobillian!
        mobillian = Mobillian(apiId: "833CC8A3-1E19-4A6D-B451-5AB9BBA52839", apiKey: "3A0A012F-EFD9-49CF-A219-E79589230BCB")
        
        //Mobillian.GetApiKey(self);
        
        let sk: rqSurveyKey = rqSurveyKey()
        sk.surveykey = self.surveykey

        print("ÇAĞIR:" + sk.surveykey)
        let msi: mSurveyInfo = mobillian.GetSurveyInfo(surveykey: sk)
//        self.surveyinfo = mobillian.GetSurveyInfo(surveykey: sk)
        print("YÜKLENDİ")
//        print(self.surveyinfo.name)
        print(msi.name)
        surveyinfo.name = msi.name
        surveyinfo.questcount = msi.questcount
        surveyinfo.estimationtime = msi.estimationtime
        surveyinfo.needlocation = msi.needlocation
        surveyinfo.isquotaout = msi.isquotaout
        surveyinfo.phonevalidation = msi.phonevalidation
        surveyinfo.fittest = msi.fittest
        
        
//        surveyform.name = msi.name
//        surveyform.questcount = msi.questcount
//        surveyform.estimationtime = msi.estimationtime
//        surveyform.needlocation = msi.needlocation
//        surveyform.isquotaout = msi.isquotaout
//        surveyform.phonevalidation = msi.phonevalidation
//        surveyform.fittest = msi.fittest
        
        
        //Survey Form
        var msf: msdlConfigModel = mobillian.GetSurveyForm(surveykey: sk)
        print("----1-----")
        print(msf.questionnaire.count)
        print("----2-----")
        msdlconfigmodel.questionnaire = msf.questionnaire
        msdlconfigmodel.info = msf.info
        
        print(String(msdlconfigmodel.questionnaire.count))
        print("------------")
        
        
        
        
    }
    
    

    
    
//  DELEGATES
    func DoneLanding() {
        print("Tamamlandı on Survey Layout")

        if (self.surveyinfo.phonevalidation == true){
            self.activeStep = .phoneverification
        }
        else {
            if(self.surveyinfo.fittest == true){
                self.activeStep = .fittest
            }
            else{
                self.activeStep = .survey
            }
        }
    }
    
    func DoneValidation() {
        print("Tamamlandı on Validate")
        //self.activeStep = .survey
        
        
        if(self.surveyinfo.fittest == true){
            self.activeStep = .fittest
        }
        else{
            self.activeStep = .survey
        }
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
