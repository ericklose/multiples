//
//  ViewController.swift
//  Multiples
//
//  Created by Eric Klose on 1/31/16.
//  Copyright © 2016 Eric Klose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    var numberToMultiply = 0
    var numberOfClicks = 0
//    var currentTotal = 0
    let maxClicks = 8
    
    
    //Outlets
    @IBOutlet weak var titleImg: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var chosenMultiple: UITextField!
    @IBOutlet weak var mathDisplay: UILabel!
    @IBOutlet weak var addButton: UIButton!


    
    func toggleHidden() {
        titleImg.hidden = !titleImg.hidden
        playButton.hidden = !playButton.hidden
        chosenMultiple.hidden = !chosenMultiple.hidden
        mathDisplay.hidden = !mathDisplay.hidden
        addButton.hidden = !addButton.hidden
    }
    
    
    
    func updateCounter() {
        mathDisplay.text = "\(numberToMultiply * numberOfClicks) + \(numberToMultiply) = \(numberToMultiply * (numberOfClicks + 1))"
    }
    
    func restartGame() {
        toggleHidden()
        mathDisplay.text = ""
        chosenMultiple.text = ""
        numberOfClicks = 0
        numberToMultiply = 0
    }
    
    
    @IBAction func pushPlayButton(sender: UIButton) {
        
        if chosenMultiple.text != nil && chosenMultiple.text != "" {
            toggleHidden()
            numberOfClicks = 0
            numberToMultiply = Int(chosenMultiple.text!)!
            updateCounter()
        }
    }
    
    @IBAction func pushAddButton(sender: UIButton) {
        numberOfClicks++
        if numberOfClicks >= maxClicks {
            restartGame()
        } else {
            updateCounter()
        }
    }
    
    
}



