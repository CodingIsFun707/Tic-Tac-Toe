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
    @IBOutlet weak var GOL: UILabel!
    //full form GameOverLabel

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
        GOL.text = ""
    }
    @IBAction func TicTacToeSquareWasPressed(_ sender: UIButton) {
        
        let CSTHBP = sender.currentTitle // full form = CurrentSquareThatHasBeenPressed
        
        
        
        
        
        switch Int(CSTHBP!) {
        case 1:
            Utils.UpdateButton(button: Square1)
            S1IF = true
        case 2:
            Utils.UpdateButton(button: Square2)
            S2IF = true
        case 3:
            Utils.UpdateButton(button: Square3)
            S3IF = true
        case 4:
            Utils.UpdateButton(button: Square4)
            S4IF = true
        case 5:
            Utils.UpdateButton(button: Square5)
            S5IF = true
        case 6:
            Utils.UpdateButton(button: Square6)
            S6IF = true
        case 7:
            Utils.UpdateButton(button: Square7)
            S7IF = true
        case 8:
            Utils.UpdateButton(button: Square8)
            S8IF = true
        case 9:
            Utils.UpdateButton(button: Square9)
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
        
        
        let V1 = Utils.FindEmptySpace(A: GameSoFar)[0]
        let V2 = Utils.FindEmptySpace(A:GameSoFar)[1]
        
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
        
        if GameSoFar[0][0] == true {
            if GameSoFar[0][1] == true {
                if GameSoFar[0][2] == true {
                    if GameSoFar[1][0] == true {
                        if GameSoFar[1][1] == true {
                            if GameSoFar[1][2] == true {
                                if GameSoFar[2][0] == true {
                                    if GameSoFar[2][1] == true {
                                        if GameSoFar[2][2] == true {
                                            GOL.text = "Its A Tie!"
                                            Utils.RestartButton(button: Square1)
                                            Utils.RestartButton(button: Square2)
                                            Utils.RestartButton(button: Square3)
                                            Utils.RestartButton(button: Square4)
                                            Utils.RestartButton(button: Square5)
                                            Utils.RestartButton(button: Square6)
                                            Utils.RestartButton(button: Square7)
                                            Utils.RestartButton(button: Square8)
                                            Utils.RestartButton(button: Square9)
                                            
                                            S1IF = false
                                            S2IF = false
                                            S3IF = false
                                            S4IF = false
                                            S5IF = false
                                            S6IF = false
                                            S7IF = false
                                            S8IF = false
                                            S9IF = false
                                            
                                            GameSoFar[0][0] = S1IF
                                            GameSoFar[0][1] = S2IF
                                            GameSoFar[0][2] = S3IF
                                            GameSoFar[1][0] = S4IF
                                            GameSoFar[1][1] = S5IF
                                            GameSoFar[1][2] = S6IF
                                            GameSoFar[2][0] = S7IF
                                            GameSoFar[2][1] = S8IF
                                            GameSoFar[2][2] = S9IF
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        
        if Utils.LookForUserWin(A: GameSoFar) == true {
            GOL.text = "You Win!"
            
        }
        
    }
    


}

