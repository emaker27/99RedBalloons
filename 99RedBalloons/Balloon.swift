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
    var number = 0
    var imageToUse = UIImage(named: "")


func createBalloons() -> [Balloons] {
        var balloons: [Balloons] = []
        var number = 0
        var imageToUse = UIImage(named: "")
        var balloon = Balloons()
        
        for var i = 0; i < 100; i++ {
            let randomNumber = Int(arc4random_uniform(UInt32(5)))
            balloon.number = i
            switch randomNumber {
            case 0:
                balloon.imageToUse = UIImage(named: "RedBalloon1.jpg")
            case 1:
                balloon.imageToUse = UIImage(named: "RedBalloon2.jpg")
            case 2:
                balloon.imageToUse = UIImage(named: "RedBalloon3.jpg")
            default:
                balloon.imageToUse = UIImage(named: "RedBalloon4.jpg")
            }
            
            balloons.append(balloon)
        }
        
        return balloons
    }
}