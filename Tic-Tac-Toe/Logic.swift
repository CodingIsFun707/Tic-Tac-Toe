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
        
        var Data3 = [Data1[0],Data1[1],Data1[2],Data1[3],Data1[4],Data1[5],Data1[6],Data1[7],Data1[8],]
        
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
}
