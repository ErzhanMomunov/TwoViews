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
        //greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }

    @IBAction func greetingButtonTapped() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.configuration = setupButton(with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting")
    }
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        return buttonConfiguration
    }
    
}

