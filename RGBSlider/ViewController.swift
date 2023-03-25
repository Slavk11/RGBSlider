//
//  ViewController.swift
//  RGBSlider
//
//  Created by Сазонов Станислав on 24.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var rGBView: UIView!
    
    @IBOutlet private var redSliderValue: UILabel!
    @IBOutlet private var greenSliderValue: UILabel!
    @IBOutlet private var blueSliderValue: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rGBView.layer.cornerRadius = 10
    }
    
    private func rGBViewColorChanged() {
        rGBView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}
// MARK: - Setup UI
extension ViewController {
    @IBAction private func redSliderChangedValue() {
        redSlider.value = round(redSlider.value / 0.01) * 0.01
        redSliderValue.text = redSlider.value.formatted()
        rGBViewColorChanged()
    }
    
    @IBAction private func greenSliderChangedValue() {
        greenSlider.value = round(greenSlider.value / 0.01) * 0.01
        greenSliderValue.text = greenSlider.value.formatted()
        rGBViewColorChanged()
    }
    
    @IBAction private func blueSliderChangedValue() {
        blueSlider.value = round(blueSlider.value / 0.01) * 0.01
        blueSliderValue.text = blueSlider.value.formatted()
        rGBViewColorChanged()
    }
}

