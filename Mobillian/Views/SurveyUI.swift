
import SwiftUI

struct SurveyUI: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack{
                Image("MobilianLogo")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                Spacer()
            }
            Text("Mobillian Survey Page")
            Spacer()
        }
    }
}


struct SurveyUI_Previews: PreviewProvider {
    static var previews: some View {
        SurveyUI()
    }
}
