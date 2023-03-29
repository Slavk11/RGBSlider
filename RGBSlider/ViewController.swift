//
//  ViewController.swift
//  RGBSlider
//
//  Created by Сазонов Станислав on 24.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet private var rGBView: UIView!
    
    @IBOutlet private var redSliderValue: UILabel!
    @IBOutlet private var greenSliderValue: UILabel!
    @IBOutlet private var blueSliderValue: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rGBViewColorChanged()
        
        redSliderValue.text = string(from: redSlider)
        greenSliderValue.text = string(from: greenSlider)
        blueSliderValue.text = string(from: blueSlider)
        
    }

    @IBAction private func sliderAction(_ sender: UISlider) {
        rGBViewColorChanged()
        switch sender {
        case redSlider:
            redSliderValue.text = string(from: redSlider)
        case greenSlider:
            greenSliderValue.text = string(from: greenSlider)
        default: blueSliderValue.text = string(from: blueSlider)
        }
    }
    
    private func rGBViewColorChanged() {
        rGBView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
}


