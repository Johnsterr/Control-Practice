//
//  ViewController.swift
//  ControlPractice
//
//  Created by Евгений Пашко on 14.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet var switches: [UISwitch]!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    
    var number: UInt8 = 128
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    /// Update all outlets to number
    func updateUI() {
        button.setTitle("\(number)", for: [])
        
        // TODO: set switches to number
        
        slider.value = Float(number)
        textField.text = "\(number)"
    }

    @IBAction func buttonPressed() {
        number = UInt8((Int(number) + 1) % 256)
        updateUI()
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
    }
    
    @IBAction func sliderMoved() {
        number = UInt8(slider.value)
        updateUI()
    }
    
    @IBAction func textFieldEdited() {
        number = UInt8(textField.text ?? "") ?? 128
        updateUI()
    }
    
}

