//
//  OnOff.swift
//  buttonLights
//
//  Created by Mac Mini on 5/7/16.
//  Copyright © 2016 Christian McMullin. All rights reserved.
//
import UIKit

let yellow = UIColor.yellow
let blue = UIColor.blue




class ColorChange {
   
   
    
    
    func mainColor(_ b11: UIButton, _ b21: UIButton, _ b31: UIButton, _ b41: UIButton, _ b51: UIButton, _ b12: UIButton, _ b22: UIButton, _ b32: UIButton, _ b42: UIButton, _ b52: UIButton, _ b13: UIButton, _ b23: UIButton, _ b33: UIButton, _ b43: UIButton, _ b53: UIButton, _ b14: UIButton, _ b24: UIButton, _ b34: UIButton, _ b44: UIButton, _ b54: UIButton, _ b15: UIButton, _ b25: UIButton, _ b35: UIButton, _ b45: UIButton, _ b55: UIButton) {
        
        let lights: [UIButton] = [b11, b21, b31, b41, b51, b12, b22, b32, b42, b52, b13, b23, b33, b43, b53, b14, b24, b34, b44, b54, b15, b25, b35, b45, b55]
        
        for i in lights {
            i.tintColor = yellow
        }
    }
    
  
    func lightsOff(button: UIButton) {
        if button.tintColor == yellow {
            button.tintColor = blue
        } else {
            button.tintColor = yellow
        }
    }
   
    
    
    enum Light {
        case on
        case off
        
    }
    func lightOn (_ button: UIButton, onOrOff: Light) {
        switch onOrOff {
        case .on:  button.backgroundColor = .yellow
        case .off:  button.backgroundColor = .blue
       
        }
    }
}






