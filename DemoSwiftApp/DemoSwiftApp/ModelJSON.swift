//
//  ModelJSON.swift
//  DemoSwiftApp
//
//  Created by Isaev Baiel on 10.10.2018.
//  Copyright © 2018 Neobis. All rights reserved.
//

import Foundation

struct MainList: Decodable {
    var list: [List]
}

struct List: Decodable {
    var main: Main
    var weather: [Weather]
}

struct Main: Decodable {
    var temp: Float
}

struct Weather: Decodable {
    var main: String
}


