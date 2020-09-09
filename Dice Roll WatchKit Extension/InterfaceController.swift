//
//  InterfaceController.swift
//  Dice Roll WatchKit Extension
//
//  Created by Ondřej Vele on 08/09/2020.
//  Copyright © 2020 Ondřej Vele. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var rollButton: WKInterfaceButton!
    @IBOutlet weak var diceImage: WKInterfaceImage!
    
    
    var dices = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func buttonPressed() {
        diceImage.setImage(dices.randomElement())
    }
    
}
