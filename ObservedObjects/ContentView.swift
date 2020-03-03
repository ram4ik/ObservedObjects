//
//  ContentView.swift
//  ObservedObjects
//
//  Created by ramil on 03.03.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var person = Person()
    
    var body: some View {
        VStack(alignment: .leading) {
            Form {
                Section(header: Text("Name")) {
                    TextField("First name", text: $person.firstName)
                    TextField("Last name", text: $person.lastName)
                }
                Section(header: Text("Location")) {
                    TextField("Street", text: $person.street)
                    TextField("City", text: $person.city)
                    TextField("Country", text: $person.country)
                }
            }
            Divider()
            Group {
                Text("First name is \(person.firstName)")
                Text("Last name is \(person.lastName)")
                Text("Street is \(person.street)")
                Text("City is \(person.city)")
                Text("Country is \(person.country)")
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
