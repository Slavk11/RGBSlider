//
//  ViewController.swift
//  RGBSlider
//
//  Created by Сазонов Станислав on 24.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var rGBView: UIView!
    
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rGBView.layer.cornerRadius = 10
    }

    @IBAction private func redSliderChangedValue() {
        let roundedValue = round(redSlider.value / 0.01) * 0.01
        redSlider.value = roundedValue
        redSliderValue.text = redSlider.value.formatted()
    }
    
    @IBAction private func greenSliderChangedValue() {
        let roundedValue = round(greenSlider.value / 0.01) * 0.01
        greenSlider.value = roundedValue
        greenSliderValue.text = greenSlider.value.formatted()
    }
    
    @IBAction func blueSliderChangedValue() {
        let roundedValue = round(blueSlider.value / 0.01) * 0.01
        blueSlider.value = roundedValue
        blueSliderValue.text = blueSlider.value.formatted()
    }
    
    
}

