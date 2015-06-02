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
    
    var balloons:[Balloons] = []
    var currentIndex = 0
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
        balloonLogic()
    }
    
    func balloonLogic() {
        self.numberOfBalloonsTextLabel.text = "\(self.balloons[self.currentIndex].number + 1)" + " balloons!"
        self.currentIndex += 1
        self.backgroundImage.image = self.balloons[self.currentIndex].imageToUse
        
        if self.currentIndex == 99 {
            self.currentIndex = 0
        }
    }
}

