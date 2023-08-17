//
//  questions.swift
//  recs
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct questions: View {
    var body: some View {
        NavigationStack {
                    ZStack {
                        Image("OpenP")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .ignoresSafeArea()
                            
                    
                    VStack {
                        Spacer()
                        Image("question")
                            .resizable()
                                .frame(width: 85.0, height: 70.0)
                        
                        
                        Text("Take Quiz")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .fontDesign(.serif)
                        
                        Text("Take a short quiz to figure out what best fits your sustainability journey")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .fontDesign(.serif)
                            .padding(.all)
                        
                        
                        Spacer ()
                            .frame(height: 40, alignment: .center)
                        
                      //  Image("Color")
                         
                        NavigationLink(destination: q1()) {
                            Text("Let's Go!")
                        }
                        .font(.title)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.926, green: 0.513, blue: 0.747))
                        .fontDesign(.serif)
                        .padding(.all)
                        Spacer()
                        HStack(spacing: 30) {
                                    NavigationLink(destination: home()) {
                                      VStack {
                                        Image("home")
                                          .resizable(resizingMode: .stretch)
                                          .aspectRatio(contentMode: .fit)
                                          .frame(width: 45.0, height: 45.0)
                                        Text("Home")
                                          .foregroundColor(Color.white)
                                      }
                                    }
                                    VStack {
                                      Image("goals")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50.0, height: 45.0)
                                      Text("Quiz")
                                        .foregroundColor(Color.white)
                                    }
                                    NavigationLink(destination: ContentView()) {
                                      VStack {
                                        Image("rec")
                                          .resizable(resizingMode: .stretch)
                                          .aspectRatio(contentMode: .fit)
                                          .frame(width: 50.0, height: 50.0)
                                        Text("Recs")
                                          .foregroundColor(Color.white)
                                      }
                                    }
                                    NavigationLink(destination: goals()) {
                                      VStack {
                                        Image("todo")
                                          .resizable(resizingMode: .stretch)
                                          .aspectRatio(contentMode: .fit)
                                          .frame(width: 50.0, height: 40.0)
                                        Text("Goals")
                                          .foregroundColor(Color.white)
                                      }
                                    }
                                  }
                    }
                    .padding(.all)
                }
                    .fontDesign(.serif)
                    
            }
    }
}

struct questions_Previews: PreviewProvider {
    static var previews: some View {
        questions()
    }
}
