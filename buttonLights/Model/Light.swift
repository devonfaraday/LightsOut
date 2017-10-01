//
//  Light.swift
//  buttonLights
//
//  Created by Christian McMullin on 10/1/17.
//  Copyright © 2017 Christian McMullin. All rights reserved.
//

import Foundation
import UIKit

class Light {
    let column: Int
    let row: Int
    var isOn: Bool
    let button: UIButton
    
    init(column: Int, row: Int, isOn: Bool = false, button: UIButton) {
        self.column = column
        self.row = row
        self.isOn = isOn
        self.button = button
        self.button.backgroundColor = .blue
    }
}
