//
//  FinalView.swift
//  recs
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct FinalView: View {
    var body: some View {
        NavigationStack {
                    ZStack {
            
                        Image("EarthF")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                            .ignoresSafeArea()
                        
            
                        VStack {
                            
                            Text("Congrats!")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .fontDesign(.serif)
                            
                            Spacer ()
                                .frame(height: 30, alignment: .center)
                            
                            Text("You're one step closer to making a difference")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .fontDesign(.serif)
                            
                            Spacer ()
                                .frame(height: 30, alignment: .center)
                            
                            Text("We'll now recommend you practices and products based on your selections:")
                                .multilineTextAlignment(.center)
                                .fontDesign(.serif)
                                .padding()
                            
                            Text("A few minutes")
                                .fontDesign(.serif)
                            
                            Text("A fair amount")
                                .fontDesign(.serif)
                            
                            Text("Small")
                                .fontDesign(.serif)
                            
                            Spacer ()
                                .frame(height: 30, alignment: .center)
                            
                            NavigationLink(destination: ContentView()) {
                                Text("View Recommendations")
                            }
                            .font(.title2)
                            .buttonStyle(.borderedProminent)
                            .tint(Color(red: 0.926, green: 0.513, blue: 0.747))
                            .fontDesign(.serif)
                        }
                        .padding(.all)
                    }
                }
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}
