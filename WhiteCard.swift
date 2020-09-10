//
//  WhiteCard.swift
//  AchievementUICase
//
//  Created by Jevon Charles on 9/9/20.
//  Copyright © 2020 Jevon Charles. All rights reserved.
//

import SwiftUI

struct WhiteCard: View {
    var height: CGFloat
    var width:  CGFloat
    @State var indictorPosition: CGFloat = 0
    
    
    var body: some View {
        ZStack {
            Color.white
                .frame(height: height * 0.75)
                .cornerRadius(45, corners: [.topLeft, .topRight])
            
            VStack(spacing: 0) {
                VStack(alignment: .leading) {
                    HStack(alignment: .lastTextBaseline) {
                        Image(systemName: "rosette")
                            .frame(maxWidth: .infinity)
                            .onTapGesture {
                                self.indictorPosition = 0
                        }
                        
                        Image(systemName: "bell.circle")
                            .frame(maxWidth: .infinity)
                            .onTapGesture {
                                self.indictorPosition = 0 + self.width * 0.33
                        }
                        
                        Text("5 of 20")
                            .font(.body)
                            .frame(maxWidth: .infinity)
                            .onTapGesture {
                                self.indictorPosition = self.width - self.width * 0.33
                        }
                        
                    }
                    .font(.title)
                    .foregroundColor(.primary)
                    .padding(.top, 30)
                    
                    Color("Cyclamen")
                        .frame(width: width * 0.33, height: 4)
                        .cornerRadius(10)
                        .offset(x: indictorPosition)
                        .animation(.easeInOut)
                }
//                Spacer()
                
                GeometryReader { bottomGeo in
                    VStack(spacing: 0) {
                        HStack(spacing: 0) {
                            ZStack {
                                Color.white
                                    .frame(width: bottomGeo.size.width * 0.5, height: bottomGeo.size.height * 0.5)
                                    .border(Color.gray.opacity(0.2))
                                
                                Circle()
                                    .foregroundColor(Color("Cyclamen"))
                                    .opacity(0.3)
                                    .padding()
                                
                                Text("👋🏾")
                                    .font(.largeTitle)
                            }
                            
                            ZStack {
                                Color.white
                                    .frame(width: bottomGeo.size.width * 0.5, height: bottomGeo.size.height * 0.5)
                                    .border(Color.gray.opacity(0.2))
                                
                                Circle()
                                    .foregroundColor(.blue)
                                    .opacity(0.3)
                                    .padding()
                                
                                Text("🧠")
                                    .font(.largeTitle)
                            }
                        }
                        
                        HStack(spacing: 0) {
                            ZStack {
                                Color.white
                                    .frame(width: bottomGeo.size.width * 0.5, height: bottomGeo.size.height * 0.5)
                                    .border(Color.gray.opacity(0.2))
                                
                                Circle()
                                    .foregroundColor(.green)
                                    .opacity(0.3)
                                    .padding()
                                
                                Text("👩🏿‍🦰")
                                    .font(.largeTitle)
                            }
                            
                            ZStack {
                                Color.white
                                    .frame(width: bottomGeo.size.width * 0.5, height: bottomGeo.size.height * 0.5)
                                    .border(Color.gray.opacity(0.2))
                                
                                Circle()
                                    .foregroundColor(.red)
                                    .opacity(0.3)
                                    .padding()
                                
                                Text("👨🏿‍💻")
                                    .font(.largeTitle)
                            }
                        }
                    }
                }
            }
        }
    }
}


struct WhiteCard_Previews: PreviewProvider {
    static var previews: some View {
        WhiteCard(height: 300, width: 400)
    }
}
