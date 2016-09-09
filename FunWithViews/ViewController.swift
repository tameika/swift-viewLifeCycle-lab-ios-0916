//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var result1: UILabel!
    
    @IBOutlet weak var result2: UILabel!
    
    @IBOutlet weak var result3: UILabel!
    
    @IBOutlet weak var result4: UILabel!
    
    @IBOutlet weak var result5: UILabel!
    
    @IBOutlet weak var result6: UILabel!
    
    
    @IBOutlet weak var square1: UILabel!
    
    @IBOutlet weak var square2: UILabel!
    
    @IBOutlet weak var square3: UILabel!
    
    @IBOutlet weak var square4: UILabel!
    
    @IBOutlet weak var square5: UILabel!
    
    @IBOutlet weak var square6: UILabel!
    
    @IBOutlet weak var square7: UILabel!
    
//    @IBAction func diceButton(sender: UIButton)
    
    var count = 0 // counter for the small blocks
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
      
            
            result1.hidden = true
            result2.hidden = true
            result3.hidden = true
            result4.hidden = true
            result5.hidden = true
            result6.hidden = true
            
            square1.hidden = true
            square2.hidden = true
            square3.hidden = true
            square4.hidden = true
            square5.hidden = true
            square6.hidden = true
            square7.hidden = true
        
        
            
        }

    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        
        return Int(arc4random_uniform(6) + 1)
    }
    


func clearSquares() {
    
    square1.hidden = true
    square2.hidden = true
    square3.hidden = true
    square4.hidden = true

    square5.hidden = true
    square6.hidden = true
    square7.hidden = true
}
    

func rearrangeDiceRollDisplay(roll: Int) {
    
    switch roll {
        
    case 1:
        clearSquares()
        square4.hidden = false
        
    case 2:
        clearSquares()
        square1.hidden = false
        square7.hidden = false
        
    case 3:
        clearSquares()
        square1.hidden = false
        square4.hidden = false
        square7.hidden = false
        
        
    case 4:
        clearSquares()
        square1.hidden = false
        square2.hidden = false
        square6.hidden = false
        square7.hidden = false
        
        
    case 5:
        clearSquares()
        square1.hidden = false
        square2.hidden = false
        square4.hidden = false
        square6.hidden = false
        square7.hidden = false
        
    case 6:
        clearSquares()
        square1.hidden = false
        square2.hidden = false
        square3.hidden = false
        square5.hidden = false
        square6.hidden = false
        square7.hidden = false
     
    default:
        
        break
        
    }
}


func updateLabelWithRollResult(roll: Int, count: Int) {
    
    //roll = printed on small boxes; result = counter , to make sure the small blocks will just show up to 6 count.
    
    let rollResult = String(roll)
    
    switch (count) {
        
    case 1:
        result1.hidden = false
        result1.text = rollResult
        
    case 2:
        result2.hidden = false
        result2.text = rollResult
        
    case 3:
        result3.hidden = false
        result3.text = rollResult
        
    case 4:
        result4.hidden = false
        result4.text = rollResult
        
    case 5:
        result5.hidden = false
        result5.text = rollResult
        
    case 6:
        result6.hidden = false
        result6.text = rollResult
        
    default:
        
        break
    }
    
}
    
    
    
    
    @IBAction func rollTheDice(sender: UIButton) {
        
//       Call on the functions(events) you need when you pressed the die
//       Make sure the arguments are all connected to each other.
//       Make sure to count the number when you pressed the dice so that the 2nd event will switch the correct value.
         
        
        let x = randomDiceRoll()
        rearrangeDiceRollDisplay(x)
        count += 1
        updateLabelWithRollResult(x, count: count)
        
    }
    
}



