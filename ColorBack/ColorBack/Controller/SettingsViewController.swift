//
//  SettingsViewController.swift
//  ColorBack
//
//  Created by Luc Derosne on 18/10/2018.
//  Copyright © 2018 Luc Derosne. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var RedButton: UIButton!
    @IBOutlet weak var BlueButton: UIButton!
    @IBOutlet weak var GreenButton: UIButton!
    
    var myView: UIView?
    var color: String = "Red"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        color = SettingService.color
        self.view.backgroundColor = textToUIColor(color)
    }
 
    @IBAction func changeColor(_ sender: UIButton) {
        guard let ui_color = sender.backgroundColor else { return }
        
        self.view.backgroundColor = ui_color
        color = UIColorToText(ui_color)
        SettingService.color = color
    }

    func textToUIColor(_ color: String) -> UIColor {
        var ui_color: UIColor
        switch color {
        case "red":
            ui_color = UIColor.red
        case "blue":
            ui_color = UIColor.blue
        case "green":
            ui_color = UIColor.green
        default:
            ui_color = UIColor.red
        }
        return(ui_color)
    }
    
    func UIColorToText(_ ui_color: UIColor) -> String {
        switch ui_color {
        case UIColor.red:
            color = "Red"
        case UIColor.blue:
            color = "blue"
        case UIColor.green:
            color = "green"
        default:
            color = "Red"
        }
        return(color)
    }
    
}
