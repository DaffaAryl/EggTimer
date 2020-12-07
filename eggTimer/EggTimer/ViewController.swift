//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTime = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    var secondHitungan = 60
    
    @IBAction func eggBTN(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        secondHitungan = eggTime[hardness]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(eggSelector), userInfo: nil, repeats: true)
        
    }
    @objc func eggSelector(){
            if secondHitungan > 0  {
                print("\(secondHitungan) second")
                secondHitungan -= 1
            }
        }
    
}
