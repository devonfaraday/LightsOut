//
//  LightController.swift
//  buttonLights
//
//  Created by Christian McMullin on 10/1/17.
//  Copyright © 2017 Christian McMullin. All rights reserved.
//

import Foundation
import UIKit

class LightController {
    
    var allLights = [Light]()
    var lightsSwitched = [Light]()
    var lightTapped: Light?
    
    func createLights(buttons: [UIButton]) {
        var column = 1
        var row = 1
        for button in buttons {
                if column == 1  {
                    createLight(atColumn: column, atRow: row, button: button)
                    row += 1
                } else if column == 2 {
                    createLight(atColumn: column, atRow: row, button: button)
                    row += 1
                } else if column == 3 {
                    createLight(atColumn: column, atRow: row, button: button)
                    row += 1
                } else if column == 4 {
                    createLight(atColumn: column, atRow: row, button: button)
                    row += 1
                } else if column == 5 {
                    createLight(atColumn: column, atRow: row, button: button)
                    row += 1
                }
            if row == 6 {
                column += 1
                row = 1
            }
        }
    }
    
    func createLight(atColumn column: Int, atRow row: Int, button: UIButton) {
        let light = Light(column: column, row: row, button: button)
        allLights.append(light)
    }
    
    func lightPressed() {
        guard let lightTapped = lightTapped else { return }
        lightsSwitched.append(lightTapped)
        for light in allLights {
            if light.column == lightTapped.column - 1 && light.row == lightTapped.row
                || light.column == lightTapped.column + 1 && light.row == lightTapped.row
                || light.row == lightTapped.row - 1 && light.column == lightTapped.column
                || light.row == lightTapped.row + 1 && light.column == lightTapped.column {
                lightsSwitched.append(light)
            }
        }
        switchLights()
    }
    
    
    func switchLights() {
        for light in lightsSwitched {
            light.isOn = !light.isOn
            if light.isOn {
                light.button.setImage(#imageLiteral(resourceName: "LightOn"), for: .normal)
            } else {
                light.button.setImage(#imageLiteral(resourceName: "LightOff"), for: .normal)
            }
        }
        lightsSwitched = [Light]()
    }
}
