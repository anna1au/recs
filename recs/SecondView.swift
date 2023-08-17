//
//  SecondView.swift
//  recs
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationStack {
                    ZStack {
                
                        Image("background")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                            .ignoresSafeArea()
                       
                    VStack {
                        Text("How much money are you willing to spend?")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .fontDesign(.serif)
                        
                        
                        Spacer ()
                            .frame(height: 40, alignment: .center)
                        
                        NavigationLink(destination: ThirdView()) {
                            Text("Not much")
                        }
                        
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.926, green: 0.513, blue: 0.747))
                        .fontDesign(.serif)
                        
                        
                        Spacer ()
                            .frame(height: 15, alignment: .center)
                        
                        
                        NavigationLink(destination: ThirdView()) {
                            Text("A fair amount")
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.926, green: 0.513, blue: 0.747))
                        .fontDesign(.serif)
                        
                        
                        Spacer ()
                            .frame(height: 15, alignment: .center)
                        
                        
                        NavigationLink(destination: ThirdView()) {
                            Text("A pretty penny")
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.926, green: 0.513, blue: 0.747))
                        .fontDesign(.serif)
                        
                    }
                    .padding (.all)
                }
                }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
