//
//  ViewController.swift
//  Concentration
//
//  Created by Anatoly on 06/08/2019.
//  Copyright © 2019 Anatoly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount : Int = 0
    @IBOutlet weak var flipCountLabel: UILabel!
    
    var emojies : [String] = ["👻", "🎃", "♦️", "🇬🇬"]
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = "Flips: \(flipCount)"
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            print("cardNumber = \(cardNumber)")
            flipCard(withEmoji: emojies[cardNumber], on: sender)
        }
        else {
            print("This card is not in the array")
        }
    }

    func flipCard(withEmoji emoji : String, on button : UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor.orange
        }
        else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor.white
        }
    }
    

}

