//
//  ViewController.swift
//  Dicee
//
//  Created by My Mac on 1/28/19.
//  Copyright © 2019 My Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Dice1: UIImageView!
    @IBOutlet weak var Dice2: UIImageView!
    
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    let DiceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       randomDice()
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        randomDice()
    }
    
    func randomDice(){
        
        randomDice1 = Int.random(in: 0...5)
        randomDice2 = Int.random(in: 0...5)
        
        Dice1.image = UIImage(named: DiceArray[randomDice1])
        Dice2.image = UIImage(named: DiceArray[randomDice2])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomDice()
    }
    
}

