//
//  QuestUI.swift
//  Mobillian
//
//  Created by Ahmet Han on 19.10.2021.
//

import SwiftUI

struct QuestUI: View {
    
    var config: IQuestConfig
    
    var body: some View {
        

        HStack{
            Text(config.GetText())
                .font(.system(size: 20))
                .multilineTextAlignment(.leading)
                .padding(.top, 8)
                .padding(.top, 8)
                .padding(.trailing, 8)
                .padding(.leading, 8)
            Spacer()
        }

  

        
        //.background(Color.red)
        //.frame(width:UIScreen.main.bounds.size.width - 8)
        

        
        switch config.GetType() {
        case eQuestType.text:
            TextUI()
        case eQuestType.numeric:
            NumericUI()
        case eQuestType.single:
            if let scm = config as? singleConfigModel {
                SingleUI(options: scm.options)
            }
        case eQuestType.multi:
            if let scm = config as? multiConfigModel {
                MultiUI(options: scm.options)
            }
        case eQuestType.info:
            Text("")
        default:
            Text("")
        }
        
        
    }
}

