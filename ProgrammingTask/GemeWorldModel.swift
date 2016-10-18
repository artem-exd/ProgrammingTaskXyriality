//
//  GemeWorldModel.swift
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

import UIKit

//because struct can't be imported in objc we create an nsobject. in swift we use struct, enums, etc. value refferece as much as possible
public class GemeWorldModel: NSObject {
    let country: String
    let id: Int
    let language: String
    let mapURL: NSURL
    let name: String
    let url: NSURL
    let worldStatus: String
    
    init(country: String,
         id: Int,
         language: String,
         mapURL: NSURL,
         name: String,
         url: NSURL,
         worldStatus: String) {
        self.country = country
        self.id = id
        self.language = language
        self.mapURL = mapURL
        self.name = name
        self.url = url
        self.worldStatus = worldStatus
        super.init()
    }
}
