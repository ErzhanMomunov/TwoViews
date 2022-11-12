//
//  ViewController.swift
//  TwoViews
//
//  Created by Эржан Момунов on 13.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 10
    }

    @IBAction func greetingButtonTapped() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
            for: .normal)
    }
    
}

