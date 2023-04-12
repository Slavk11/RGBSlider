//
//  MainViewController.swift
//  RGBSlider
//
//  Created by Сазонов Станислав on 11.04.2023.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setValue(for backgroundColor: BackgroundColor)
}

final class MainViewController: UIViewController {
    
    @IBOutlet var displayColor: UIView!
    private var backgroundColor = BackgroundColor.getDefaultColors() {
        didSet {
            displayColor.backgroundColor = UIColor(
                red: CGFloat(backgroundColor.red),
                green: CGFloat(backgroundColor.green),
                blue: CGFloat(backgroundColor.blue),
                alpha: 1
            )
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
        settingsVC.backgroundColor = backgroundColor
        settingsVC.delegate = self
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension MainViewController: SettingsViewControllerDelegate {
    func setValue(for backgroundColor: BackgroundColor) {
        self.backgroundColor = backgroundColor
    }
}
