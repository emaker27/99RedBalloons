//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Elton Nix on 5/25/15.
//  Copyright (c) 2015 Elton Nix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOfBalloonsTextLabel: UILabel!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var balloons: [Balloons] = []
    var randomInt = 0
    var imageUsed = UIImage(named: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.balloons = Balloons().createBalloons()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func NextBalloonButton(sender: UIBarButtonItem) {
        self.numberOfBalloonsTextLabel.hidden = false
        var randomNum = 0
        do {
            randomNum = Int(arc4random_uniform(UInt32(100)))
        } while (randomNum == self.randomInt || imageUsed == self.balloons[randomNum])
        self.randomInt = randomNum
        self.imageUsed = self.balloons[randomNum]
        
        self.numberOfBalloonsTextLabel.text = "\(randomInt)" + " balloons!"
        
        self.backgroundImage.image = self.balloons[self.randomInt]
        println(self.balloons[self.randomInt])
        
    }

}

