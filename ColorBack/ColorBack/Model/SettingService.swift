//
//  SettingService.swift
//  ColorBack
//
//  Created by Luc Derosne on 26/11/2018.
//  Copyright © 2018 Luc Derosne. All rights reserved.
//

import Foundation

class SettingService {
    private struct Keys {
        static let color = "color"
    }
    
    static var color: String {
        get {
          return UserDefaults.standard.string(forKey: Keys.color) ?? "Red"
        }
        set {
            UserDefaults.standard.set(color, forKey: Keys.color)
        }
    }
}
