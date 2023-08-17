//
//  ThirdView.swift
//  recs
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        NavigationStack {
                    ZStack {

                        Image("background")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                            .ignoresSafeArea()
                    
                    VStack {
                        Text("What kind of changes do you want to make to your life?")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .fontDesign(.serif)
                            .padding(.horizontal)
                        
                        
                        Spacer ()
                            .frame(height: 40, alignment: .center)
                        
                        NavigationLink(destination: FinalView()) {
                            Text("Small")
                        }
                        
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                       .tint(Color(red: 0.926, green: 0.513, blue: 0.747))
                        .fontDesign(.serif)
                        
                        
                        Spacer ()
                            .frame(height: 15, alignment: .center)
                        
                        
                        NavigationLink(destination: FinalView()) {
                            Text("Moderate")
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.926, green: 0.513, blue: 0.747))
                        .fontDesign(.serif)
                        
                        
                        Spacer ()
                            .frame(height: 15, alignment: .center)
                        
                        
                        NavigationLink(destination: FinalView()) {
                            Text("Major")
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

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
