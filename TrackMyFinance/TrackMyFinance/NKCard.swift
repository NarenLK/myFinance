//
//  NKCard.swift
//  TrackMyFinance
//
//  Created by Narendra.kivanda on 19/06/24.
//

import SwiftUI

struct SmallCard<T> : View where T: StringProtocol {
    
    var amount: T
    var subTitle: T
    
    init(amount: T, subTitle: T) {
        self.amount = amount
        self.subTitle = subTitle
    }
    
    var body: some View {
        ZStack {
            Color("nkBlack")
                .frame(height: 85)
                .cornerRadius(20)
            
            VStack() {
                
                HStack {
                    Text(amount)
                        .foregroundColor(Color("nkWhite"))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                }.padding(.leading)
                
                HStack {
                    Text(subTitle)
                        .foregroundColor(Color("nkWhite"))
                    Spacer()
                }.padding(.leading)
            }
        }
    }
}
