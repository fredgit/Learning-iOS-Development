//
//  ViewController.swift
//  LoveFinderDemo
//
//  Created by mfred on 7/12/16.
//  Copyright (c) 2016 Fred. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var sexSwitch: UISegmentedControl!

    @IBOutlet weak var dateDpicker: UIDatePicker!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var hasHouse: UISwitch!
    
    @IBOutlet weak var okButton: UIButton!
    
    @IBOutlet weak var resultTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func heightChanged(sender: AnyObject) {
        var slider = sender as UISlider
        var value = Int(slider.value)
        heightLabel.text = "\(value)cm"
        
    }
    
    @IBAction func okTap(sender: AnyObject) {
        let nameText = (nameTextField.text?.isEmpty != nil) ? nameTextField.text! : "no name"
        
        let genderText = sexSwitch.selectedSegmentIndex == 0 ? "Female" : "Male"
        
        let hasHouseText = hasHouse.on ? "has house" : "no house"
        
        let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        
        let now = NSDate()
        
//        let components = gregorian?.components([.Year], fromDate: dateDpicker.date, toDate: now, options: <#NSCalendarOptions#>(rawValue: 0))
//        let age = components?.year
        
        resultTextView.text = "\(nameText), \(genderText), height\(heightLabel.text!), \(hasHouseText)"
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    


}

