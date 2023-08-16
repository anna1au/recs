//
//  ContentView.swift
//  recs
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    @State var x = [String]()
    @State var check = [String]()
    var name = ["Bamboo Toothbrush", "Plant Based Glue Sticks", "Silicon Food Bag", "The Clean Deo", "Vitamix FoodCycler"]
    var image = ["bamboo", "glue", "bag", "deo", "compost"]
    var price = ["$8.99", "$4.24", "$12.00", "$31.00", "$371.73"]
    var rating = ["5", "5", "5", "5", "5"]
    var ratings = ["4.6", "5.0", "4.6", "4.7", "4.6"]
    var desc = ["12 count \nWater resistant bamboo \nRecycled biodegradable packaging \nFull refund available", "100% non-toxic \nChildren safe \nRenewable and sustainably harvested", "1 item count \nVariety of colors \nHolds 28 fluid ounces \nMicrowave and dishwasher safe \nMinimal packaging", "60g/2.110z \n4 scents \nNeutralizes body odor and absorbs sweat \n90% of the plastic is recycled resin", "Countertop food composter \nReduces food waste and odor \nQuiet cycles \nWaste bucket is dishwasher safe"]
    @State private var index = 0
    var body: some View {
        ZStack {
            Color(.systemGreen)
                .ignoresSafeArea()
            VStack {
                Text("Shop Sustainable")
                    .font(.title)
                    .fontWeight(.black)
                Spacer()
                VStack(alignment: .leading, spacing: 10) {
                    Text(name[index])
                        .font(.largeTitle)
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
                        if index > name.count - 1 {
                        }
                        else {
                            index += 1
                        }
                        x.append(name[index-1])
                        print(x)
                    }) {
                        Image("x")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 80.0)
                    }
                    Spacer()
                    Button(action: {
                        if index > name.count - 1 {
                        }
                        else {
                            index += 1
                        }
                        check.append(name[index-1])
                        print(check)
                    }) {
                        Image("check")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 80.0)
                    }
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
                    VStack {
                        Image("goals")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 45.0)
                        Text("Quiz")
                            .foregroundColor(Color.white)
                    }
                    VStack {
                        Image("rec")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0, height: 50.0)
                        Text("Recs")
                            .foregroundColor(Color.white)
                    }
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
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
