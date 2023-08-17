//
//  products.swift
//  recs
//
//  Created by scholar on 8/16/23.
//

import SwiftUI
struct products: View {
    @Binding var x: String
    @Binding var check: String
    var body: some View {
        ZStack {
            Color("bg")
                .ignoresSafeArea()
            VStack {
                Text("Product List")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                Spacer()
                VStack(spacing: 10) {
                    Text("Products you liked")
                        .font(.title2)
                        .fontWeight(.black)
                        .multilineTextAlignment(.center)
                    Text(check)
                        .multilineTextAlignment(.leading)
                }
                .padding(.all, 20.0)
                .frame(width: 300.0)
                .background(Rectangle() .foregroundColor(.white)
                    .cornerRadius(15)
                    .shadow(radius:15))
                .padding(.all, 20.0)
                
                VStack(spacing: 10){
                    Text("Products you didn't like")
                        .font(.title2)
                        .fontWeight(.black)
                        .multilineTextAlignment(.center)
                    Text(x)
                        .multilineTextAlignment(.leading)
                }
                .padding(.all, 20.0)
                .frame(width: 300.0)
                .background(Rectangle() .foregroundColor(.white)
                    .cornerRadius(15)
                    .shadow(radius:15))
                .padding(.all, 20.0)
                Spacer()
            }
        }
        .fontDesign(.serif)
    }
}

struct products_Previews: PreviewProvider {
    @State static var x: String = ""
    @State static var check: String = ""
    static var previews: some View {
        products(x: $x, check: $check)
    }
}
