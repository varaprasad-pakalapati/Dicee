//
//  ViewController.swift
//  Dicee
//
//  Created by Pakalapati, Maha Satya (Produban) on 21/11/2017.
//  Copyright © 2017 Pakalapati, Maha Satya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceCounter1 : Int = 0
    var diceCounter2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        diceImageView1.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
        diceImageView2.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

