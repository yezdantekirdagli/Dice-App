//
//  ViewController.swift
//  Zar Uygulaması
//
//  Created by GBGYP-9 on 3.05.2018.
//  Copyright © 2018 Yezdan Tekirdağlı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstDiceImageView: UIImageView!
    @IBOutlet weak var SecondDiceImageView: UIImageView!
    
    let diceSurface = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2") , #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder()
    }
    override var canBecomeFirstResponder : Bool {
        get {
            return true
        }
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            RollButton() 
        }
    }

    @IBAction func RollButton() {
        let diceFirst = Int(arc4random_uniform((5)+1))
        let diceSecond = Int(arc4random_uniform((5)+1))
        
        FirstDiceImageView.image = diceSurface[diceFirst]
        SecondDiceImageView.image = diceSurface[diceSecond]
    }
    
}

