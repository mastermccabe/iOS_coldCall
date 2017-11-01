//
//  ViewController.swift
//  ColdCallv2
//
//  Created by McCabe Tonna on 11/1/17.
//  Copyright © 2017 Wambl, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    
    var currentName = "Ready?"
    var randVal : Int = 0
    var rand2 : Int = 0
    var colors: String = "black"
    
    
    @IBAction func callButtonPressed(_ sender: UIButton) {
        
        randVal = Int(arc4random_uniform(UInt32(nameBank.count-1))+1)
        rand2 = Int(arc4random_uniform(UInt32(5))+1)
        if (rand2 <= 2){
            numberLabel.textColor = UIColor.red
        }
        else if (rand2 <= 4){
                numberLabel.textColor = UIColor.orange
            }
        
        else {
         numberLabel.textColor = UIColor.green
        }

        updateUI()
    }
   
    let nameBank = ["Ready?","Troy","Jake","Brad","Chaz","Chris","Frat guy"]
    
    
    func updateUI() {
        nameLabel.text = nameBank[randVal]
        if (rand2 > 0){
        numberLabel.text = String(rand2)
        }
//        questionLabel.text = quizBank[currentIndex].0
//        answerLabel.text = quizBank[currentIndex].1
//        answerLabel.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
          updateUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

