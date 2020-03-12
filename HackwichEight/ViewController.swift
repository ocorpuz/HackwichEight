//
//  ViewController.swift
//  HackwichEight
//
//  Created by CM Student on 3/10/20.
//  Copyright © 2020 Oliver Corpuz Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 0
    
    //part 2 of Part 3
    var targetValue: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentValue = lroundf(slider.value)
        
        startNewRound()
    }
    
    
    @IBAction func GuessNumberPressed(_ sender: Any) {
        let message = "The value is:\(currentValue)" + "\nThe target value is:\(targetValue)"
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
        
    }
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        
        print("The number is:\(slider.value)")
        currentValue = lroundf(slider.value)
        
        }
    func startNewRound(){
        targetValue = Int.random(in: 0...100)
        currentValue = lroundf(slider.value)
    }
    
    
   

    
}

