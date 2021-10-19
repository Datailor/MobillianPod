
import SwiftUI

struct MultiListItem: View {
    @State var isSelected:Bool
    @ObservedObject var item: OptionBasicConfigModel
    var delegate:ListItemDelegate?
    
    var body: some View {
        HStack{
            
            ZStack{
                Rectangle()
                   .stroke(Color.init(red: 0.45, green: 0.45, blue: 0.45), lineWidth: 2)
                   .frame(width: 24, height: 24)
                    .padding(.leading, 16)
               
                
                if isSelected{
                    Rectangle()
                        .fill(Color.init(red: 0, green: 0.6, blue: 0.973)) //MobillianBlue
                        .frame(width: 18, height: 18)
                        .padding(.leading, 16)
                    
                }
                
            }
            
    
            
            Text(item.label!)
            
            Spacer()
            
        }
        .onTapGesture {
            print("Tıklandı" + item.label!)
            isSelected.toggle()
            if isSelected {
                delegate?.SelectItem(item: item)
            }else{
                delegate?.DeSelectItem(item: item)
            }
        }
    }
}

