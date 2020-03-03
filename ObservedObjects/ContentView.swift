//
//  ContentView.swift
//  ObservedObjects
//
//  Created by ramil on 03.03.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    
    @State private var street = ""
    @State private var city = ""
    @State private var country = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Form {
                Section(header: Text("Name")) {
                    TextField("First name", text: $firstName)
                    TextField("Last name", text: $lastName)
                }
                Section(header: Text("Location")) {
                    TextField("Street", text: $street)
                    TextField("City", text: $city)
                    TextField("Country", text: $country)
                }
            }
            Divider()
            Group {
                Text("First name is \(firstName)")
                Text("Last name is \(lastName)")
                Text("Street is \(street)")
                Text("City is \(city)")
                Text("Country is \(country)")
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
