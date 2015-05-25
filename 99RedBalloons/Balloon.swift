//
//  Balloon.swift
//  99RedBalloons
//
//  Created by Elton Nix on 5/25/15.
//  Copyright (c) 2015 Elton Nix. All rights reserved.
//

import Foundation
import UIKit

struct Balloons {
    var balloon: [UIImage]! = []
    
    mutating func createBalloons() {
        var randomNumber: Int
        var imageToUse: String
        
        for var i = 0; i < 100; i++ {
            randomNumber = Int(arc4random_uniform(UInt32(5)))
            
            switch randomNumber {
            case 0:
                imageToUse = "RedBalloon1.jpg"
            case 1:
                imageToUse = "RedBalloon2.jpg"
            case 2:
                imageToUse = "RedBalloon3.jpg"
            default:
                imageToUse = "RedBalloon4.jpg"
            }
            
            balloon.append(UIImage(named: imageToUse)!)
        }
    }
}