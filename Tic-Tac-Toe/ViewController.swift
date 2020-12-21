//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by Chandraprabha Rajput on 12/16/20.
//  Copyright © 2020 AJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Square1: UIButton!
    @IBOutlet weak var Square2: UIButton!
    @IBOutlet weak var Square3: UIButton!
    @IBOutlet weak var Square4: UIButton!
    @IBOutlet weak var Square5: UIButton!
    @IBOutlet weak var Square6: UIButton!
    @IBOutlet weak var Square7: UIButton!
    @IBOutlet weak var Square8: UIButton!
    @IBOutlet weak var Square9: UIButton!
    
    var S1IF = false
    var S2IF = false
    var S3IF = false
    var S4IF = false
    var S5IF = false
    var S6IF = false
    var S7IF = false
    var S8IF = false
    var S9IF = false
//full forms = Square(squareNumber)IsFilled
    
    var GameSoFar = [
            [false,false,false],
            [false,false,false],
            [false,false,false]
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func TicTacToeSquareWasPressed(_ sender: UIButton) {
        
        let CSTHBP = sender.currentTitle // full form = CurrentSquareThatHasBeenPressed
        
        func UpdateButton(button: UIButton) {
            button.isUserInteractionEnabled = false
            button.setTitleColor(#colorLiteral(red: 0, green: 0.3289367855, blue: 0.5761557221, alpha: 1), for: .normal)
            button.setBackgroundImage(#imageLiteral(resourceName: "crossImage"), for: .normal)
        }
        
        func FindEmptySpace() -> Array<Any?> {
            var ESIF = false // full form = EmptySpaceIsFound
            var C1 = 0
            var C2 = 0
            var IFT = true //full form = IsFirstTime
            var ATR: [Any?] = []
            //full forms = Counter(1 or 2)
            while ESIF != true {
                
                if GameSoFar[C1][C2] == false && IFT == true {
                    ATR = [C1,C2]
                    ESIF = true
                }
                
                C2 += 1
                
                if GameSoFar[C1][C2] == false {
                    ATR = [C1,C2]
                    ESIF = true
                }
                
                if C2 == 2 && C1 != 2 {
                    C2 = 0
                    C1 += 1
                }
                
                if C2 == 2 && C1 == 2 {
                    ATR = [nil]
                    ESIF = true
                }
                
                IFT = false
            }
            return ATR
        }
        
        
        
        switch Int(CSTHBP!) {
        case 1:
            UpdateButton(button: Square1)
            S1IF = true
        case 2:
            UpdateButton(button: Square2)
            S2IF = true
        case 3:
            UpdateButton(button: Square3)
            S3IF = true
        case 4:
            UpdateButton(button: Square4)
            S4IF = true
        case 5:
            UpdateButton(button: Square5)
            S5IF = true
        case 6:
            UpdateButton(button: Square6)
            S6IF = true
        case 7:
            UpdateButton(button: Square7)
            S7IF = true
        case 8:
            UpdateButton(button: Square8)
            S8IF = true
        case 9:
            UpdateButton(button: Square9)
            S9IF = true
        default:
            print("error")
        }
        
        GameSoFar[0][0] = S1IF
        GameSoFar[0][1] = S2IF
        GameSoFar[0][2] = S3IF
        GameSoFar[1][0] = S4IF
        GameSoFar[1][1] = S5IF
        GameSoFar[1][2] = S6IF
        GameSoFar[2][0] = S7IF
        GameSoFar[2][1] = S8IF
        GameSoFar[2][2] = S9IF
        
        
        let V1 = FindEmptySpace()[0]
        let V2 = FindEmptySpace()[1]
        
        if V1 != nil && V2 != nil {
            
            GameSoFar[V1 as! Int][V2 as! Int] = true
            
            
            
            switch [V1 as! Int,V2 as! Int] {
            case [0,0]:
                Square1.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
                Square1.setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
                S1IF = true
                Square1.isUserInteractionEnabled = false
            case [0,1]:
                Square2.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
                Square2.setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
                S2IF = true
                Square2.isUserInteractionEnabled = false
            case [0,2]:
                Square3.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
                Square3.setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
                S3IF = true
                Square3.isUserInteractionEnabled = false
            case [1,0]:
                Square4.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
                Square4.setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
                S4IF = true
                Square4.isUserInteractionEnabled = false
            case [1,1]:
                Square5.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
                Square5.setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
                S5IF = true
                Square5.isUserInteractionEnabled = false
            case [1,2]:
                Square6.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
                Square6.setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
                S6IF = true
                Square6.isUserInteractionEnabled = false
            case [2,0]:
                Square7.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
                Square7.setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
                S7IF = true
                Square7.isUserInteractionEnabled = false
            case [2,1]:
                Square8.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
                Square8.setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
                S8IF = true
                Square8.isUserInteractionEnabled = false
            case [2,2]:
                Square9.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
                Square9.setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
                S9IF = true
                Square9.isUserInteractionEnabled = false
            default:
                print("error")
            }
            
        }
        
        
        
    }
    


}

