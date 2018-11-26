//
//  ServiceColot.swift
//  ColorBack
//
//  Created by Luc Derosne on 26/11/2018.
//  Copyright © 2018 Luc Derosne. All rights reserved.
//

import Foundation

class ColorService {
    static var shared = ColorService()
    private init() {}
    
    private(set) var colors = [Color]()
    
    func add(color: Color) {
        colors.append(color)
    }
}
