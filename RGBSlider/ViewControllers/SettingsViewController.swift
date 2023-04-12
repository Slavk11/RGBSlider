//
//  ViewController.swift
//  RGBSlider
//
//  Created by Сазонов Станислав on 24.03.2023.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    @IBOutlet private var rGBView: UIView!
    
    @IBOutlet private var redSliderValue: UILabel!
    @IBOutlet private var greenSliderValue: UILabel!
    @IBOutlet private var blueSliderValue: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    var backgroundColor: BackgroundColor!
    unowned var delegate: SettingsViewControllerDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rGBViewColorChanged()
        
        redSlider.value = Float(backgroundColor.red)
        greenSlider.value = Float(backgroundColor.green)
        blueSlider.value = Float(backgroundColor.blue)
        
        navigationItem.hidesBackButton = true
        
        redSliderValue.text = string(from: redSlider)
        greenSliderValue.text = string(from: greenSlider)
        blueSliderValue.text = string(from: blueSlider)
        
    }
    
    @IBAction private func sliderAction(_ sender: UISlider) {
        rGBViewColorChanged()
        switch sender {
        case redSlider:
            redSliderValue.text = string(from: redSlider)
            backgroundColor.red = Double(redSlider.value)
        case greenSlider:
            greenSliderValue.text = string(from: greenSlider)
            backgroundColor.green = Double(greenSlider.value)
        default: blueSliderValue.text = string(from: blueSlider)
            backgroundColor.blue = Double(blueSlider.value)
        }
    }
    
    
    @IBAction func doneButtonPressed() {
        view.endEditing(true)
        delegate.setValue(for: backgroundColor)
        rGBViewColorChanged()
        dismiss(animated: true)
    }
    
    private func rGBViewColorChanged() {
        rGBView.backgroundColor = UIColor(
            red: CGFloat(backgroundColor.red),
            green: CGFloat(backgroundColor.green),
            blue: CGFloat(backgroundColor.blue),
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
}


