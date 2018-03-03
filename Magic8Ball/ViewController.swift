//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Scott Campbell on 2/26/18.
//  Copyright © 2018 Scott Campbell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Array that holds the 8 ball images
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    //Will be updated with a random number
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        newBallImage()
    }
    
    func newBallImage() {
        
        //sets randomBallNumber to a random number between 0 & 4 upon app load
        randomBallNumber = Int(arc4random_uniform(5))
        
        //Updates the UIImageView w/ picture of 8 ball
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

