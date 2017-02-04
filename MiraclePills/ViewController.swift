//
//  ViewController.swift
//  MiraclePills
//
//  Created by Hiroki Sunagawa on 04/02/2017.
//  Copyright © 2017 Hiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    //MARK: Outlets
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    //MARK: Properties
    
    let states = ["Alask", "Atlanta", "Alabama", "California", "Chicago", "Hawaii", "Miami", "New York", "Nevada", "Washington"]

    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    
    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        buyNowButton.isHidden = true
    }
    
    
    @IBAction func buynowButtonPressed(_ sender: AnyObject) {
        backgroundImage.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        buyNowButton.isHidden = false
    }

}

