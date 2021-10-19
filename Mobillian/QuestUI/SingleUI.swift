
import SwiftUI

struct SingleUI: View, ListItemDelegate {


    var options: [OptionBasicConfigModel]
    @State var active: Int = 0
    
    var body: some View {
        
//        Text(String(active))
        
        ForEach(options,  id: \.id){
            TheOption in
            if TheOption.value == active {
                SingleListItem(isSelected: true, item: TheOption, delegate: self)
            }else{
                SingleListItem(isSelected: false, item: TheOption, delegate: self)
            }
           
        }
        
        
    }
    
    
    func SelectItem(item: OptionBasicConfigModel) {
        print("Seçilen")
        active = item.value!
    }
    
    func DeSelectItem(item: OptionBasicConfigModel) {
        print("bırakılan")
    }
    
    
    
}
