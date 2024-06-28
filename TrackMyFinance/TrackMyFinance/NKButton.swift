//
//  NKButton.swift
//  TrackMyFinance
//
//  Created by Narendra.kivanda on 19/06/24.
//

import SwiftUI

struct LargeTextButton<T> : View where T: StringProtocol {
    
    var icon: T
    var text: T
    
    init(icon: T, text: T) {
        self.icon = icon
        self.text = text
    }
    
    var body: some View {
        ZStack {
            Color("nkLightGrey")
                .frame(height: 75)
                .cornerRadius(16)
            
            HStack {
                Text(text)
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                CircularButton(
                    backgroundColor: "nkGrey",
                    icon: icon
                )
            }
        }
    }
}

struct CircularButton<T> : View where T: StringProtocol {
    
    var backgroundColor: T
    var icon: T
       
    init(backgroundColor: T = "nkLightGrey", icon: T) {
           self.backgroundColor = backgroundColor
           self.icon = icon
       }
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color("\(backgroundColor)"))
                .frame(width: 50)
            Image(systemName: "\(icon)")
        }
    }
}

struct IconButton<T> : View where T: StringProtocol {
    
    var icon: T
    var amount: T
    
    init(icon: T, amount: T) {
        self.icon = icon
        self.amount = amount
    }
    
    var body: some View {
        VStack {
            CircularButton(
                backgroundColor: "nkGrey",
                icon: icon
            )
            
            Text(amount)
                .fontWeight(.semibold)
        }
    }
}

