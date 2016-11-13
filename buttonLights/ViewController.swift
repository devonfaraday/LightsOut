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
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

