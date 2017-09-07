//
//  Shop.swift
//  MadridShops
//
//  Created by Diego Freniche Brito on 07/09/2017.
//  Copyright © 2017 KC. All rights reserved.
//

import Foundation

public class Shop {
    let name: String
    let description: String = ""
    let latitude: Float? = nil
    let longitude: Float? = nil
    let image: String = ""
    let logo: String = ""
    let openingHours: String = ""
    let address: String = ""
    
    public init(name: String) {
        self.name = name
    }
}
