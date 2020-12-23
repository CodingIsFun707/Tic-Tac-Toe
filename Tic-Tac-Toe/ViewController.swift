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
        
        var A = [S1IF, S2IF, S3IF, S4IF, S5IF, S6IF, S7IF, S8IF, S9IF]
        var SA: [UIButton] = [Square1, Square2, Square3, Square4, Square5, Square6, Square7, Square8, Square9]
        let CSTHBP = sender.currentTitle // full form = CurrentSquareThatHasBeenPressed

        Logic.SwitchOnCSTHBP(CS: CSTHBP, Data1: &A, Data2: SA)
        
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
            
            Logic.SwitchOnV1AndV2AsInt(Val1: V1, Val2: V2, Data1: &A, Data2: SA)
            
        }
        // this code for some reason never runs
        if GameSoFar[0][0] == true {
             print("1")
            if GameSoFar[0][1] == true {
                 print("2")
                if GameSoFar[0][2] == true {
                     print("3")
                    if GameSoFar[1][0] == true {
                         print("4")
                        if GameSoFar[1][1] == true {
                             print("5")
                            if GameSoFar[1][2] == true {
                                 print("6")
                                if GameSoFar[2][0] == true {
                                     print("7")
                                    if GameSoFar[2][1] == true {
                                         print("<#String#>")
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
                                            print("A tie has occured")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        // this code for some reason never runs
        if Utils.LookForUserWin(A: GameSoFar) == true {
            GOL.text = "You Win!"
            
        }
        
    }
    /*
     The main issue is that only the first square is ever filled
     It will end up looking like this no matter what even if the first square is pressed
     [O][X][X]
     [X][X][X]
     [X][X][X]
      
     */


}
