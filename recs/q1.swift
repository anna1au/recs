//
//  q1.swift
//  recs
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct q1: View {
    var body: some View {
        NavigationStack {
                    ZStack {
                
                        Image("background")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                            .ignoresSafeArea()
                    
                    VStack {
                        Text("How much time are you willing to spend each day?")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .fontDesign(.serif)
                        
                        
                        Spacer ()
                            .frame(height: 40, alignment: .center)
                        
                        NavigationLink(destination: SecondView()) {
                            Text("A few minutes")
                        }
                        
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.926, green: 0.513, blue: 0.747))
                        .fontDesign(.serif)
                        
                        
                        Spacer ()
                            .frame(height: 15, alignment: .center)
                        
                        
                        NavigationLink(destination: SecondView()) {
                            Text("An average amount")
                         
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.926, green: 0.513, blue: 0.747))
                        .fontDesign(.serif)
                        
                        
                        Spacer ()
                            .frame(height: 15, alignment: .center)
                        
                        
                        NavigationLink(destination: SecondView()) {
                            Text("A lot of time")
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

struct q1_Previews: PreviewProvider {
    static var previews: some View {
        q1()
    }
}
