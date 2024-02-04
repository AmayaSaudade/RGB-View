//
//  ViewController.swift
//  RGB View
//
//  Created by Darina Kirilenko on 04.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redNumberLabel: UILabel!
    @IBOutlet var greenNumberLabel: UILabel!
    @IBOutlet var blueNumberLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
    }

    @IBAction func changeColorValue(_ sender: UISlider) {
        
        switch sender.tag {
        case 1:
            redNumberLabel.text = String(format: "%.2f", sender.value)
        case 2:
            greenNumberLabel.text = String(format: "%.2f", sender.value)
        default:
            blueNumberLabel.text = String(format: "%.2f", sender.value)
        }
        updateViewColor()
    }
    
    private func updateViewColor() {
        let viewColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
        mainView.backgroundColor = viewColor
    }
}

