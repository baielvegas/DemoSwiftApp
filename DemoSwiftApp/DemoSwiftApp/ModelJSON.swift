//
//  ModelJSON.swift
//  DemoSwiftApp
//
//  Created by Isaev Baiel on 10.10.2018.
//  Copyright © 2018 Neobis. All rights reserved.
//

import Foundation

struct MainList {
    var list: [List]
}

struct List {
    var main: Main
    var weather: [Weather]
}

struct Main {
    var temp: Float
}

struct Weather {
    var main: String
}


