//
//  Person.swift
//  ObservedObjects
//
//  Created by ramil on 03.03.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class Person: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    
    @Published var street = ""
    @Published var city = ""
    @Published var country = ""
}
