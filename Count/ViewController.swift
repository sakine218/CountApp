//
//  ViewController.swift
//  Count
//
//  Created by Sakine Nishibayashi on 2019/03/31.
//  Copyright © 2019 Sakine Nishibayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Float = 0
    @IBOutlet var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func plus() {
        number += 1
        label.text = String(number)
        
        colorCheck()
    }

    @IBAction func minus() {
        number -= 1
        label.text = String(number)
        
        colorCheck()
    }
    
    @IBAction func times() {
        number *= 2
        label.text = String(number)
        
        colorCheck()
    }
    
    @IBAction func divided() {
        number /= 2
        label.text = String(number)
        
        colorCheck()
    }
    
    @IBAction func clear() {
        number = 0
        label.text = String(number)
        
        colorCheck()
    }
    
    func colorCheck() {
        if number >= 10 {
            label.textColor = .red
        } else if number < 0 {
            label.textColor = .blue
        } else {
            label.textColor = .white
        }
    }

}

