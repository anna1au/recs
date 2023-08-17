//
//  login.swift
//  recs
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct login: View {
    @State var name: String = ""
    @State private var age = 0
    @State private var country = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color("bg")
                    .ignoresSafeArea()
                VStack {
                    Image("logo")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                    Text("Welcome to EcoSwipe!")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    Text("Please answer the questions below to tailor EcoSwipe to your needs.")
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    VStack {
                        Spacer()
                        Text("What is your name?")
                            .foregroundColor(Color.white)
                        TextField("Enter name", text: $name)
                            .frame(width: 300.0)
                            .multilineTextAlignment(.center)
                            .border(Color.white, width: 1)
                        Text("What is your age?")
                            .foregroundColor(Color.white)
                        TextField("Enter age", value: $age, format: .number)
                            .frame(width: 300.0)
                            .multilineTextAlignment(.center)
                            .border(Color.white, width: 1)
                        Text("What country do you live in?")
                            .foregroundColor(Color.white)
                        Picker("", selection: $country) {
                            ForEach(["Select a country", "Afghanistan", "Åland Islands", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bangladesh", "Barbados", "Bahamas", "Bahrain", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana", "Brazil", "British Indian Ocean Territory", "British Virgin Islands", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo-Brazzaville", "Congo-Kinshasa", "Cook Islands", "Costa Rica", "$_[", "Croatia", "Curaçao", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", "El Salvador", "Egypt", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Falkland Islands", "Faroe Islands", "Federated States of Micronesia", "Fiji", "Finland", "France", "French Guiana", "French Polynesia", "French Southern Lands", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard and McDonald Islands", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iraq", "Ireland", "Isle of Man", "Israel", "Italy", "Jamaica", "Japan", "Jersey", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Moldova", "Monaco", "Mongolia", "Montenegro", "Montserrat", "Morocco", "Mozambique", "Namibia", "Nauru", "Nepal", "Netherlands", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn Islands", "Poland", "Portugal", "Puerto Rico", "Qatar", "Réunion", "Romania", "Russia", "Rwanda", "Saint Barthélemy", "Saint Helena", "Saint Kitts and Nevis", "Saint Lucia", "Saint Martin", "Saint Pierre and Miquelon", "Saint Vincent", "Samoa", "San Marino", "São Tomé and Príncipe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Sint Maarten", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia", "South Korea", "Spain", "Sri Lanka", "Sudan", "Suriname", "Svalbard and Jan Mayen", "Sweden", "Swaziland", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "Uruguay", "Uzbekistan", "Vanuatu", "Vatican City", "Vietnam", "Venezuela", "Wallis and Futuna", "Western Sahara", "Yemen", "Zambia", "Zimbabwe"], id: \.self) {
                                Text("\($0)")
                            }
                        }
                        Spacer()
                    }
                    NavigationLink(destination: home()) {
                        Text("Proceed")
                    }
                }
                .padding(.all)
            }
            .fontDesign(.serif)
        }
    }
}

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
    }
}
