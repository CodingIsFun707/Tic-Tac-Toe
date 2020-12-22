//
//  Logic.swift
//  Tic-Tac-Toe
//
//  Created by Chandraprabha Rajput on 12/21/20.
//  Copyright © 2020 AJ. All rights reserved.
//

import UIKit

struct Logic {
    static func SwitchOnCSTHBP(CS: String?, Data1: [Bool], Data2: [UIButton]) {
        
        var Data3 = [Data1[0], Data1[1], Data1[2], Data1[3], Data1[4], Data1[5], Data1[6], Data1[7], Data1[8]]
        
        switch Int(CS!) {
        case 1:
            Utils.UpdateButton(button: Data2[0])
            Data3[0] = true
        case 2:
            Utils.UpdateButton(button: Data2[1])
            Data3[1] = true
        case 3:
            Utils.UpdateButton(button: Data2[2])
            Data3[2] = true
        case 4:
            Utils.UpdateButton(button: Data2[3])
            Data3[3] = true
        case 5:
            Utils.UpdateButton(button: Data2[4])
            Data3[4] = true
        case 6:
            Utils.UpdateButton(button: Data2[5])
            Data3[5] = true
        case 7:
            Utils.UpdateButton(button: Data2[6])
            Data3[6] = true
        case 8:
            Utils.UpdateButton(button: Data2[7])
            Data3[7] = true
        case 9:
            Utils.UpdateButton(button: Data2[8])
            Data3[8] = true
        default:
            print("error")
        }
    }
    
    static func SwitchOnV1AndV2AsInt(Val1: Any?, Val2: Any?, Data1: [Bool], Data2: [UIButton]) {
        
        var Data3 = [Data1[0], Data1[1], Data1[2], Data1[3], Data1[4], Data1[5], Data1[6], Data1[7], Data1[8]]
        
        switch [Val1 as! Int,Val2 as! Int] {
        case [0,0]:
            Data2[0].setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
            Data2[0].setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
            Data3[0] = true
            Data2[0].isUserInteractionEnabled = false
        case [0,1]:
            Data2[1].setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
            Data2[1].setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
            Data3[1] = true
            Data2[1].isUserInteractionEnabled = false
        case [0,2]:
            Data2[2].setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
            Data2[2].setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
            Data3[2] = true
            Data2[2].isUserInteractionEnabled = false
        case [1,0]:
            Data2[3].setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
            Data2[3].setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
            Data3[3] = true
            Data2[3].isUserInteractionEnabled = false
        case [1,1]:
            Data2[4].setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
            Data2[4].setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
            Data3[4] = true
            Data2[4].isUserInteractionEnabled = false
        case [1,2]:
            Data2[5].setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
            Data2[5].setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
            Data3[5] = true
            Data2[5].isUserInteractionEnabled = false
        case [2,0]:
            Data2[6].setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
            Data2[6].setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
            Data3[6] = true
            Data2[6].isUserInteractionEnabled = false
        case [2,1]:
            Data2[7].setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
            Data2[7].setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
            Data3[7] = true
            Data2[7].isUserInteractionEnabled = false
        case [2,2]:
            Data2[8].setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
            Data2[8].setBackgroundImage(#imageLiteral(resourceName: "circleImage"), for: .normal)
            Data3[8] = true
            Data2[8].isUserInteractionEnabled = false
        default:
            print("error")
        }
    }
    
}
