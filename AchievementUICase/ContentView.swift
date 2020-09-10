//
//  ContentView.swift
//  AchievementUICase
//
//  Created by Jevon Charles on 9/9/20.
//  Copyright © 2020 Jevon Charles. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                VStack {
                    VStack {
                        VStack {
                            HStack {
                                Image(systemName: "chevron.left")
                                Spacer()
                                Image(systemName: "gear")
                            }
                            .font(.title)
                            
                            Spacer(minLength: 40)
                            
                            VStack {
                                HStack {
                                    ZStack {
                                        Circle()
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(Color("Ruber"))
                                        Text("😆")
                                            .font(.body)
                                    }
                                    
                                    Text("Ray Copper")
                                        .font(Font.body.weight(.bold))
                                    Spacer()
                                }
                                
                                HStack(alignment: .lastTextBaseline) {
                                    Text("300")
                                        .font(.system(size: 74))
                                        .fontWeight(.semibold)
                                    Text("points")
                                }
                                .offset(x: -30, y: -30)
                            }
                        }
                        .padding(.top, 70)
                        .padding(.horizontal)
                    }
                    
                    WhiteCard(height: geo.size.height, width: geo.size.width)
                        .padding(.bottom, 30)
                }
            }
            .background(Color("Cyclamen"))
            .edgesIgnoringSafeArea(.top)
            .statusBar(hidden: true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

