//
//  ContentView.swift
//  TrackMyFinance
//
//  Created by Narendra.kivanda on 18/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {            
            ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Text("Total balance")
                        .font(.body)
                    Spacer()
                }
                
                HStack {
                    Text("$24,124")
                        .fontWeight(.black)
                        .font(.largeTitle)
                    Spacer()
                    CircularButton(icon: "bell")
                    CircularButton(icon: "ellipsis")
                }
                
                HStack(spacing: 10) {
                    Text("My Cards")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.title2)
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ZStack {
                            Color("nkPink")
                                .cornerRadius(24)
                                .frame(width: 100, height: 160)
                            
                            Image(systemName: "plus")
                                .font(.system(size: 24, weight: .bold))
                        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
                        
                        ZStack {
                            Color("nkBlack")
                                .frame(width: 180, height: 160)
                                .cornerRadius(24)
                            
                            VStack {
                                Spacer()
                                    .frame(height: 20)
                                HStack {
                                    Image("mastercard")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                    Spacer()
                                    Text("**** 8267")
                                        .font(.callout)
                                        .foregroundColor(Color("nkLightGrey"))
                                }.padding(.horizontal)
                                Spacer()
                                HStack {
                                    Spacer()
                                        .frame(width: 10)
                                    Text("$17,452")
                                        .font(.title)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                            }.padding(.bottom)
                        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
                        
                        ZStack {
                            Color("nkGreen")
                                .frame(width: 180, height: 160)
                                .cornerRadius(24)
                            
                            VStack {
                                Spacer()
                                    .frame(height: 20)
                                HStack {
                                    Image("visa")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                    Spacer()
                                    Text("**** 9841")
                                        .font(.callout)
                                        .foregroundColor(.black)
                                }.padding(.horizontal)
                                Spacer()
                                HStack {
                                    Spacer()
                                        .frame(width: 10)
                                    Text("$6,672")
                                        .font(.title)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                            }.padding(.bottom)
                        }
                    }
                }
                
                HStack {
                    LargeTextButton(
                        icon: "arrow.down.right",
                        text: "Add income"
                    )
                    LargeTextButton(
                        icon: "arrow.up.forward",
                        text: "Add expense"
                    )
                }
                
                HStack {
                    SmallCard(
                        amount: "$5,154",
                        subTitle: "Depts"
                    )
                    
                    Spacer()
                    
                    SmallCard(
                        amount: "$15,000",
                        subTitle: "Savings"
                    )
                }
                
                ZStack {
                    Color("nkPink")
                        .frame(height: 80)
                        .cornerRadius(20)
                    
                    HStack {
                        Text("Control your finances")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 19))
                        
                        Spacer()
                        
                        ZStack {
                            Color(.black)
                                .frame(width: 110, height: 45)
                                .cornerRadius(20)
                            
                            Text("Statistics")
                                .foregroundColor(.white)
                        }
                    }.padding()
                }
                
                ZStack {
                    Color("nkLightGrey")
                        .frame(height: 150)
                        .cornerRadius(20)
                    
                    VStack {
                        HStack {
                            Text("Expences")
                                .font(.title2)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Spacer()
                            Image(systemName: "plus")
                        }
                        
                        HStack {
                            IconButton(
                                icon: "wineglass",
                                amount: "$250"
                            )
                            Spacer()
                            IconButton(
                                icon: "cart",
                                amount: "$850"
                            )
                            Spacer()
                            IconButton(
                                icon: "graduationcap",
                                amount: "$1250"
                            )
                            Spacer()
                            IconButton(
                                icon: "house",
                                amount: "$2780"
                            )
                            Spacer()
                            IconButton(
                                icon: "heart",
                                amount: "$790"
                            )
                        }
                    }.padding()
                }
                
            }.padding()
            
        }
        }
    }
}

#Preview {
    ContentView()
}
