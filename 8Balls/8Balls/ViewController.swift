//
//  ViewController.swift
//  8Balls
//
//  Created by My Mac on 1/30/19.
//  Copyright © 2019 My Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let RandomImage = ["ball1", "ball2", "ball3","ball4", "ball5"]
    
    var RandomBall: Int = 0
    
    @IBOutlet weak var IMG1: UIImageView!
    
    override func viewDidLoad() {
        updateTheBall()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func ActionButton(_ sender: Any) {
        updateTheBall()
        
    }
    
    func updateTheBall(){
        RandomBall = Int.random(in: 0 ... 4)
        
        IMG1.image = UIImage(named: RandomImage[RandomBall])
    }
   override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    
        updateTheBall()
    }
    

}

