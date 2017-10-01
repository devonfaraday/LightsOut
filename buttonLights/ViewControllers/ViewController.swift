//
//  ViewController.swift
//  buttonLights
//
//  Created by Mac Mini on 5/6/16.
//  Copyright © 2016 Christian McMullin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var moves: UILabel!
    @IBOutlet weak var record: UILabel!
//    let colorChange = ColorChange()
    //the 2 digit number represent column and row.  so button b11 is column 1 row 1
    
    //First Column of lights
    @IBOutlet weak var b11: UIButton!
    @IBOutlet weak var b12: UIButton!
    @IBOutlet weak var b13: UIButton!
    @IBOutlet weak var b14: UIButton!
    @IBOutlet weak var b15: UIButton!
    
    //second Column of lights
    @IBOutlet weak var b21: UIButton!
    @IBOutlet weak var b22: UIButton!
    @IBOutlet weak var b23: UIButton!
    @IBOutlet weak var b24: UIButton!
    @IBOutlet weak var b25: UIButton!
   
    //third Column
    @IBOutlet weak var b31: UIButton!
    @IBOutlet weak var b32: UIButton!
    @IBOutlet weak var b33: UIButton!
    @IBOutlet weak var b34: UIButton!
    @IBOutlet weak var b35: UIButton!
    
    //forth column
    @IBOutlet weak var b41: UIButton!
    @IBOutlet weak var b42: UIButton!
    @IBOutlet weak var b43: UIButton!
    @IBOutlet weak var b44: UIButton!
    @IBOutlet weak var b45: UIButton!
    
    //fifth column
    @IBOutlet weak var b51: UIButton!
    @IBOutlet weak var b52: UIButton!
    @IBOutlet weak var b53: UIButton!
    @IBOutlet weak var b54: UIButton!
    @IBOutlet weak var b55: UIButton!
    
    let yellow = UIColor.yellow
    let blue = UIColor.blue
    var moved = 0
    var records = 0
    var recordsDictionary: [String: Int] = [:]
    var buttonArray: [UIButton] = []
    let lightController = LightController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonArray = [b11, b12, b13, b14, b15, b21, b22, b23, b24, b25, b31, b32, b33, b34, b35, b41, b42, b43, b44, b45, b51, b52, b53, b54, b55]
        lightController.createLights(buttons: buttonArray)
        moved = 0
        records = 0
        moves.text = "\(moved)"
        record.text = "\(records)"
        
    }
    
    @IBAction func newGame(_ sender: AnyObject) {
        
    }
    
    // increment moved for every button pressed
    func incrementMoves() {
        moved += 1
        moves.text = "\(moved)"
    }
    
    // record level's best record  NOT WORKING
//    func bestRecord (_ level: String) {
//        if moved > recordsDictionary[level]! && allYellow(){
//            record.text = "\(moved)"
//            records = moved
//            recordsDictionary[level] = moved
//        } else {
//            record.text = "\(records)"
//        }
//    }

    @IBAction func level1(_ sender: Any) {
        
    }

    @IBAction func level2(_ sender: Any) {
        
        
    }
    @IBAction func lightButtonPressedDown(_ sender: UIButton) {
        if sender.currentImage == #imageLiteral(resourceName: "LightOn") {
            sender.setImage(#imageLiteral(resourceName: "LightOnPressed"), for: .normal)
        } else {
            sender.setImage(#imageLiteral(resourceName: "LightOffPressed"), for: .normal)
        }
    }
    
    @IBAction func lightTapped(_ button: UIButton) {
        for light in lightController.allLights {
            if light.button == button {
                lightController.lightTapped = light
                break
            }
        }
        lightController.lightPressed()
        incrementMoves()
    }
}

