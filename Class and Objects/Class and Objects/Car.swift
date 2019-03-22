//
//  Car.swift
//  Class and Objects
//
//  Created by My Mac on 3/20/19.
//  Copyright © 2019 My Mac. All rights reserved.
//

import Foundation
enum Catrype{
    case Sedan
    case Coupe
    case SUV
}
class Car{
    var carcolour = "black"
    var numberOfSeats = 5
    var TypeOfaCar : Catrype = .SUV
    
    init() {
        
    }
    convenience init(customerChosenColor : String) {
        self.init()
        carcolour = customerChosenColor
    }
}

