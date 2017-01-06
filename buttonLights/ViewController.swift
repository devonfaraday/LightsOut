//
//  ViewController.swift
//  buttonLights
//
//  Created by Mac Mini on 5/6/16.
//  Copyright © 2016 Christian McMullin. All rights reserved.
//

import UIKit
// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}


class ViewController: UIViewController {
    @IBOutlet weak var moves: UILabel!
    @IBOutlet weak var record: UILabel!
    let colorChange = ColorChange()
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         colorChange.mainColor(b11, b21, b31, b41, b51, b12, b22, b32, b42, b52, b13, b23, b33, b43, b53, b14, b24, b34, b44, b54, b15, b25, b35, b45, b55)
        
        
        moved = 0
        records = 0
        moves.text = "\(moved)"
        record.text = "\(records)"
        
    }

    func allYellow () -> Bool {
        colorChange.mainColor(b11, b21, b31, b41, b51, b12, b22, b32, b42, b52, b13, b23, b33, b43, b53, b14, b24, b34, b44, b54, b15, b25, b35, b45, b55)
        
        return true
    }
    @IBAction func newGame(_ sender: AnyObject) {
        viewDidLoad()
    }
    
    // increment moved for every button pressed
    func incrementMoves() {
        moved += 1
        moves.text = "\(moved)"
    }
    
    // record level's best record  NOT WORKING
    func bestRecord (_ level: String) {
        if moved > recordsDictionary[level] && allYellow(){
            record.text = "\(moved)"
            records = moved
            recordsDictionary[level] = moved
        } else {
            record.text = "\(records)"
        }
    }
//    func onOffSwitch(button: UIButton) {
//        buttonArray = [b11, b21, b31, b41, b51, b12, b22, b32, b42, b52, b13, b23, b33, b43, b53, b14, b24, b34, b44, b54, b15, b25, b35, b45, b55]
//        let position = buttonArray.index(of: button)
//        let secondPosition = buttonArray.index(position!, offsetBy: 1, limitedBy: 24)
//        let thirdPosition = buttonArray.index(position!, offsetBy: 5, limitedBy: 24)
//        let fourthPosition = buttonArray.index(position!, offsetBy: -1, limitedBy: 0)
//        let fifthPosition = buttonArray.index(position!, offsetBy: -5, limitedBy: 0)
//        
//        
//            // for buttons 22, 23, 24, 32, 33, 34, 42, 43, 44
//            if button.backgroundColor == .yellow {
//                colorChange.lightsOff(button)
//                colorChange.lightsOff(buttonArray[thirdPosition!])
//                colorChange.lightsOff(buttonArray[fifthPosition!])
//                colorChange.lightsOff(buttonArray[secondPosition!])
//                colorChange.lightsOff(buttonArray[fourthPosition!])
//            
//            } else {
//                colorChange.lightsOff(button)
//                colorChange.lightsOff(buttonArray[thirdPosition!])
//                colorChange.lightsOff(buttonArray[fifthPosition!])
//                colorChange.lightsOff(buttonArray[secondPosition!])
//                colorChange.lightsOff(buttonArray[fourthPosition!])
//        }
//        
   
           // buttons
        ////////////////////
    /////Level One//////
    ////////////////////
    /* l1 l7 l13 l19 25*/
    @IBAction func level1(_ sender: AnyObject) {
        viewDidLoad()
        
     
    }
    ////////////////////
    /////Level Two//////
    ////////////////////
    @IBAction func level2(_ sender: AnyObject) {
        viewDidLoad()
        record.text = "\(recordsDictionary["level2"])"
        
    }
    @IBAction func button11(_ sender: UIButton) {colorChange.lightsOff([b11, b12, b21])
    }
    @IBAction func button12(_ sender: UIButton) {colorChange.lightsOff([b11, b12, b13, b22])
    }
    @IBAction func button13(_ sender: UIButton) {colorChange.lightsOff([b12, b13, b14, b23])
    }
    @IBAction func button14(_ sender: UIButton) {colorChange.lightsOff([b13, b14, b15, b24])
    }
    @IBAction func button15(_ sender: UIButton) {colorChange.lightsOff([b14, b15, b25])
    }
    @IBAction func button21(_ sender: UIButton) {colorChange.lightsOff([b21, b11, b22, b23])
    }
    @IBAction func button22(_ sender: UIButton) {colorChange.lightsOff([b22, b12, b32, b21, b23])
    }
    @IBAction func button23(_ sender: UIButton) {colorChange.lightsOff([b23, b22, b24, b13, b33])
    }
    @IBAction func button24(_ sender: UIButton) {colorChange.lightsOff([b24, b23, b25, b14, b34])
    }
    @IBAction func button25(_ sender: UIButton) {colorChange.lightsOff([b25, b24, b15, b35])
    }
    @IBAction func button31(_ sender: UIButton) {colorChange.lightsOff([b31, b21, b41, b32])
    }
    @IBAction func button32(_ sender: UIButton) {colorChange.lightsOff([b32, b31, b33, b22, b42])
    }
    @IBAction func button33(_ sender: UIButton) {colorChange.lightsOff([b33, b32, b34, b23, b43])
    }
    @IBAction func button34(_ sender: UIButton) {colorChange.lightsOff([b34, b33, b35, b24, b44])
    }
    @IBAction func button35(_ sender: UIButton) {colorChange.lightsOff([b35, b34, b25, b45])
    }
    @IBAction func button41(_ sender: UIButton) {colorChange.lightsOff([b41, b31, b51, b42])
    }
    @IBAction func button42(_ sender: UIButton) {colorChange.lightsOff([b42, b41, b43, b32, b52])
    }
    @IBAction func button43(_ sender: UIButton) {colorChange.lightsOff([b43, b42, b44, b33, b53])
    }
    @IBAction func button44(_ sender: UIButton) {colorChange.lightsOff([b44, b43, b45, b34, b54])
    }
    @IBAction func button45(_ sender: UIButton) {colorChange.lightsOff([b45, b44, b35, b55])
    }
    @IBAction func button51(_ sender: UIButton) {colorChange.lightsOff([b51, b41, b52])
    }
    @IBAction func button52(_ sender: UIButton) {colorChange.lightsOff([b52, b42, b51, b53])
    }
    @IBAction func button53(_ sender: UIButton) {colorChange.lightsOff([b53, b52, b43, b54])
    }
    @IBAction func button54(_ sender: UIButton) {colorChange.lightsOff([b54, b53, b44, b55])
    }
    @IBAction func button55(_ sender: UIButton) {colorChange.lightsOff([b55, b54, b45])
    }
    
    
    


}

