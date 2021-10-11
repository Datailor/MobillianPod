
import SwiftUI

public struct SurveyUI: View {

    var delegate:SurveyUIDelegate?
    
    public init() {
  
    }
    
    public var body: some View {
        VStack(alignment: .center) {
            HStack{
                Image("MobilianLogo")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                Spacer()
                Button(action: {
                    delegate?.ClickClose()
                }) {
                    Image("Close")
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .flipsForRightToLeftLayoutDirection(true)
                        .foregroundColor(.red)
                }
            }
            Text("Mobillian Survey Page")
            Spacer()
        }
    }
    
//    func ClickClose() {
//        <#code#>
//    }
//
//    func Completed() {
//        <#code#>
//    }
//
//    func QuotaOut(reason: String) {
//        <#code#>
//    }
    
    
}


struct SurveyUI_Previews: PreviewProvider {
    static var previews: some View {
        SurveyUI()
    }
}
