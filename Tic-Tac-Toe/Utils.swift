//
//  Functions.swift
//  Tic-Tac-Toe
//
//  Created by Chandraprabha Rajput on 12/21/20.
//  Copyright © 2020 AJ. All rights reserved.
//

import UIKit

struct Utils {
    
    static func UpdateButton(button: UIButton) {
        button.isUserInteractionEnabled = false
        button.setTitleColor(#colorLiteral(red: 0, green: 0.3289367855, blue: 0.5761557221, alpha: 1), for: .normal)
        button.setBackgroundImage(#imageLiteral(resourceName: "crossImage"), for: .normal)
    }

    static func RestartButton(button: UIButton) {
        button.isUserInteractionEnabled = true
        button.setTitleColor(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.setBackgroundImage(nil, for: .normal)
    }

    static func FindEmptySpace(A: [[Bool]]) -> Array<Any?> {
        var ESIF = false // full form = EmptySpaceIsFound
        var C1 = 0
        var C2 = 0
        var IFT = true //full form = IsFirstTime
        var IFSF = false //full form IsFirstSquareFilled
        var ISSF = false //full form IsSideSquareFilled
        var ATR: [Any?] = []
        //full forms = Counter(1 or 2)
        while ESIF != true {
            
            if A[C1][C2] == false && IFT == true {
                ATR = [C1,C2]
                ESIF = true
            } else {
                IFSF = true
            }
            
            C2 += 1
            
            if A[C1][C2] == false && IFSF == true {
                ATR = [C1,C2]
                ESIF = true
            } else {
                ISSF = true
            }
            
            if C2 == 2 && C1 != 2 {
                C2 = 0
                C1 += 1
            }
            
            if A[C1][C2] == false && ISSF != true {
                ATR = [C1,C2]
                ESIF = true
            }
            
            if C2 == 2 && C1 == 2 {
                ATR = [nil,nil]
                ESIF = true
            }
            
            IFT = false
            ISSF = false
        }
        return ATR
    }

    static func LookForUserWin(A: [[Bool]]) -> Bool {
        var Win = false
        
        if A[0][0] == true && A[0][1] == true && A[0][2] == true {
            Win = true
        }
        if A[1][0] == true && A[1][1] == true && A[1][2] == true {
            Win = true
        }
        if A[2][0] == true && A[2][1] == true && A[2][2] == true {
            Win = true
        }
        
        if A[0][0] == true && A[1][0] == true && A[2][0] == true {
            Win = true
        }
        if A[0][1] == true && A[1][1] == true && A[2][1] == true {
            Win = true
        }
        if A[0][2] == true && A[1][2] == true && A[2][2] == true {
            Win = true
        }
        
        if A[0][0] == true && A[1][1] == true && A[2][0] == true {
            Win = true
        }
        if A[0][2] == true && A[1][1] == true && A[2][2] == true {
            Win = true
        }
        
        
        return Win
    }

}
