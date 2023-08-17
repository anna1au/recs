//
//  home.swift
//  recs
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct home: View {
    var body: some View {
        NavigationStack {
            ZStack {
                        Image("UDD")
                            .resizable()
                            .ignoresSafeArea()
                            .statusBar(hidden: true)
                        
                        ScrollView {
                            VStack(spacing: 10) {
                                
                                HStack(spacing: 1) {
                                    Image("pngggirl")
                                        .resizable()
                                        .frame(width: 60.0, height: 30.0)
                                        .offset(x:120.0,y: -45)
                                    
                                    Image("settingss")
                                        .resizable()
                                        .frame(width: 30.0, height: 30.0)
                                        .offset(x:115.0, y: -45)
                                }
                                Text("Welcome, Apple!")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                
                                
                                
                                
                                // DatePicker("Today is...",
                                //selection: $date,
                                //displayedComponents: [.date])
                                
                                //.padding(60.0)
                                // .font(.title)
                                // .multilineTextAlignment(.leading)
                                
                                HStack {
                                    Text("Today is...")
                                        .foregroundColor(Color.white)
                                    Text(Date.now.formatted(date:.long, time: .omitted))
                                    .foregroundColor(Color.white) }
                                Button("You have saved 100 gallons of water!") {
                                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                }
                                .tint(Color(red: 0.931, green: 0.508, blue: 0.731))
                                .buttonStyle(.borderedProminent)
                                .controlSize(.large)
                                Button("You have completed 2/10 goals!") {
                                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                }
                                .tint(Color(red: 0.931, green: 0.508, blue: 0.731))
                        .buttonStyle(.borderedProminent)
                        .controlSize(.large)
                                  
                                Button("Ready to take your daily quiz?") { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                }
                                .tint(Color(red: 0.931, green: 0.508, blue: 0.731))
                                .buttonStyle(.borderedProminent)
                                .controlSize(.large)
                                
                            
                            }
                            Text("Featured Media")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                
                           Spacer()
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                HStack {
                                    Button("Check on Plant") {
                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                    }
                                    .buttonStyle(.borderedProminent)
                                    .controlSize(.large)
                                    .cornerRadius(25.0)
                                    .tint(Color(red: 0.303, green: 0.723, blue: 0.61))
                                    
                                    Button("How To Compost") {
                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                    }
                                    .buttonStyle(.borderedProminent)
                                    .controlSize(.large)
                                    .cornerRadius(25.0)
                                    .tint(Color(red: 0.125, green: 0.442, blue: 0.356))
                                    Button("Want to grow your own food??") {
                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                    }
                                    .buttonStyle(.borderedProminent)
                                    .controlSize(.large)
                                    .cornerRadius(25.0)
                                    .tint(Color(red: 0.303, green: 0.723, blue: 0.61))
                                    
            Button("Ocean Cleanup Projects") {
                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                    }
                                    .buttonStyle(.borderedProminent)
                                    .controlSize(.large)
                                    .cornerRadius(25.0)
                                    .tint(Color(red: 0.125, green: 0.442, blue: 0.356))
                                    Button("Walk To Plant Trees!") {
                                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                    }
                                    .tint(Color(red: 0.303, green: 0.723, blue: 0.61))
                                    .buttonStyle(.borderedProminent)
                                    .controlSize(.large)
                                    .cornerRadius(25.0)
                                }
                            })
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                HStack {
                                    Button(action: {}) {
                                        HStack {
                                            Image(systemName: "globe")
                                            Text("Endangered animals")
                                        }
                                    }
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color(red: 0.125, green: 0.442, blue: 0.356))
                                    .cornerRadius(25.0)
                                    Button(action: {}) {
                                        HStack {
                                            Image(systemName: "gift")
                                            Text("Donations")
                                        }
                                    }
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color(red: 0.303, green: 0.723, blue: 0.61))
                                    .cornerRadius(25.0)
                                    Button(action: {}) {
                                        HStack {
                                            Image(systemName: "heart")
                                            Text("Sustainable products")
                                        }
                                    }
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color(red: 0.125, green: 0.442, blue: 0.356))
                                    .cornerRadius(25.0)
                                    Button(action: {}) {
                                        HStack {
                                            Image(systemName: "newspaper")
                                            Text("Article of the day")
                                        }
                                    }
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color(red: 0.303, green: 0.723, blue: 0.61))
                                    .cornerRadius(25.0)

                                    
                                    

                                    
                                }
                                
                                
                            }
                                       
                                ) //horizontal scroll
                            VStack {
             
                                Text("Product of the Day:")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                
                                Image("bamboo")
                                    .resizable()
                                    .frame(width: 200.0, height: 200.0)
                                    .cornerRadius(40)

                            }
                            HStack(spacing: 30) {
                                        VStack {
                                          Image("home")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 45.0, height: 45.0)
                                          Text("Home")
                                            .foregroundColor(Color.white)
                                        }
                                        NavigationLink(destination: questions()) {
                                          VStack {
                                            Image("goals")
                                              .resizable(resizingMode: .stretch)
                                              .aspectRatio(contentMode: .fit)
                                              .frame(width: 50.0, height: 45.0)
                                            Text("Quiz")
                                              .foregroundColor(Color.white)
                                          }
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
                       
            }
            .fontDesign(.serif)
        }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
