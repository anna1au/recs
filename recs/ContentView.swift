//
//  ContentView.swift
//  recs
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showproducts = false
    @State var x: String = ""
    @State var check: String = ""
    var name = ["Bamboo Toothbrush", "Plant Based Glue Sticks", "Silicon Food Bag", "The Clean Deo", "Levi's Secondhand Program", "Pela Case", "The Right to Shower", "Yihong Metal Straws"]
    var image = ["bamboo", "glue", "bag", "deo", "levi", "pela", "soap", "straws"]
    var price = ["$8.99", "$4.24", "$12.00", "$31.00", "$36.00", "$48.00", "$17.88", "$9.98"]
    var rating = ["4.5", "5", "4.5", "4.5", "", "5", "4.5", "4.5"]
    var ratings = ["4.6", "5.0", "4.6", "4.7", "No rating available", "5.0", "4.3", "4.7"]
    var desc = ["12 count \nWater resistant bamboo \nRecycled biodegradable packaging \nFull refund available", "100% non-toxic \nChildren safe \nRenewable and sustainably harvested", "1 item count \nVariety of colors \nHolds 28 fluid ounces \nMicrowave and dishwasher safe \nMinimal packaging", "60g/2.110z \n4 scents \nNeutralizes body odor and absorbs sweat \n90% of the plastic is recycled resin", "Save waste by buying used items \nProducts are verified by Levi's \nCheaper than original cost", "Compostable cases for phones and AirPods \nSaves carbon emissions and water \nSoft, flexible, and protective cases", "Pack of 3 7 oz bars \n4 different styles of soap \nBiodegradable packaging \nContains Rainforest Alliance Certified palm oil", "Set of 8 \nDurable and sturdy \nEasy to use and clean \nEasy to store on the go"]
    @State var text = "Shop Sustainable"
    @State private var index = 0
    var body: some View {
        NavigationStack {
            ZStack {
                Color("bg")
                    .ignoresSafeArea()
                VStack {
                    Text(text)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                    VStack(alignment: .leading, spacing: 10) {
                        Text(name[index])
                            .font(.title)
                            .fontWeight(.black)
                        Image(image[index])
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                            .cornerRadius(18)
                        Text(price[index])
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        HStack {
                            Image(rating[index])
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 20.0)
                            Text(ratings[index])
                        }
                        Text(desc[index])
                    }
                    .padding(.all, 20.0)
                    .frame(width: 300.0)
                    .background(Rectangle() .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(radius:15))
                    .padding(.all, 20.0)
                    HStack {
                        Button(action: {
                            if index == name.count - 1 {
                                text = "No more products! \nCome back next time."
                            }
                            else {
                                index += 1
                                x += name[index-1]
                                x += "\n"
                            }
                            print("x")
                            print(x)
                        }) {
                            Image("x")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80.0, height: 80.0)
                        }
                        Spacer()
                        NavigationLink(destination: products(x: $x, check: $check)) {
                            Text("View Products List")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        Button(action: {
                            if index == name.count - 1 {
                                text = "No more products! \nCome back next time."
                            }
                            else {
                                index += 1
                                check += name[index-1]
                                check += "\n"
                            }
                            print("check")
                            print(check)
                        }) {
                            Image("check")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80.0, height: 80.0)
                        }
                    }
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
                        VStack {
                            Image("rec")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50.0, height: 50.0)
                            Text("Recs")
                                .foregroundColor(Color.white)
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
                .padding()
            }
            .fontDesign(.serif)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
