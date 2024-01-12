//
//  ViewController.swift
//  ControlsAndTextViews
//
//  Created by Daniel Cazorro Frias  on 11/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets -
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myProgressView: UIProgressView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var myStepperLabel: UILabel!
    @IBOutlet weak var mySwitchLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextView: UITextView!
    
    // Variables
    
    private let myPickerViewValues = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Buttons
        
        myButton.setTitle("Mi Botón", for: .normal)
        myButton.backgroundColor = .blue
        myButton.setTitleColor(.white, for: .normal)
        
        // Pickers
        
        myPickerView.backgroundColor = .lightGray
        myPickerView.dataSource = self
        myPickerView.delegate = self
        myPickerView.isHidden = true
        
        // PageControls
        
        myPageControl.numberOfPages = myPickerViewValues.count
        myPageControl.currentPageIndicatorTintColor = .blue
        myPageControl.pageIndicatorTintColor = .lightGray
        
        // SegmentedControl
        
        mySegmentedControl.removeAllSegments()
        for (index, value) in myPickerViewValues.enumerated() {
            mySegmentedControl.insertSegment(withTitle: value, at: index, animated: true)
        }
        
        // My Slider
        
        mySlider.minimumTrackTintColor = .red
        mySlider.minimumValue = 1
        mySlider.maximumValue = Float(myPickerViewValues.count)
        mySlider.value = 1
        
        // Stepper
        
        myStepper.minimumValue = 1
        myStepper.maximumValue = Double(myPickerViewValues.count)
        
        // Switch
        
        mySwitch.onTintColor = .purple
        mySwitch.isOn = false
        
        // Progress View
        
        myProgressView.progress = 0
        
        // Activity Indicator
        
        myActivityIndicator.color = .orange
        myActivityIndicator.startAnimating()
        myActivityIndicator.hidesWhenStopped = true
        
        // Labels
        
        myStepperLabel.textColor = .darkGray
        myStepperLabel.font = UIFont.boldSystemFont(ofSize: 36)
        myStepperLabel.text = "1"
        
        mySwitchLabel.text = "Está apagado"
        
        // TextFields
        
        myTextField.textColor = .brown
        myTextField.placeholder = "Escribe algo"
        myTextField.delegate = self
        
        // TextView
        myTextView.textColor = .brown
        myTextView.delegate = self
        
        
    }
    
    // MARK: - Actions -
    
    @IBAction func myButtonAction(_ sender: Any) {
        
        if myButton.backgroundColor == .blue {
            myButton.backgroundColor = .green
        } else {
            myButton.backgroundColor = .blue
        }
        
        myTextView.resignFirstResponder()
    }
    
    @IBAction func myPageControlAction(_ sender: Any) {
        myPickerView.selectRow(myPageControl.currentPage, inComponent: 0, animated: true)
        
        let myString = myPickerViewValues[myPageControl.currentPage]
        myButton.setTitle(myString, for: .normal)
        mySegmentedControl.selectedSegmentIndex = myPageControl.currentPage
        mySlider.value = Float(myPageControl.currentPage)
    }
    
    @IBAction func mySegmentedControlAction(_ sender: Any) {
        myPickerView.selectRow(mySegmentedControl.selectedSegmentIndex, inComponent: 0, animated: true)
        
        let myString = myPickerViewValues[mySegmentedControl.selectedSegmentIndex]
        myButton.setTitle(myString, for: .normal)
        
        myPageControl.currentPage = mySegmentedControl.selectedSegmentIndex
        
        mySlider.value = Float(mySegmentedControl.selectedSegmentIndex)
    }
    
    @IBAction func mySliderAction(_ sender: Any) {
        
        var progress: Float = 0
        
        switch mySlider.value {
        case 1..<2:
            mySegmentedControl.selectedSegmentIndex = 0
            myPageControl.currentPage = 0
            myPickerView.selectRow(Int(mySlider.value) , inComponent: 0, animated: true)
            progress = 0.2
            
        case 2..<3:
            mySegmentedControl.selectedSegmentIndex = 1
            myPageControl.currentPage = 1
            myPickerView.selectRow(Int(mySlider.value), inComponent: 0, animated: true)
            progress = 0.4
            
            
        case 3..<4:
            mySegmentedControl.selectedSegmentIndex = 2
            myPageControl.currentPage = 2
            myPickerView.selectRow(Int(mySlider.value), inComponent: 0, animated: true)
            progress = 0.6
            
            
        case 4..<5:
            mySegmentedControl.selectedSegmentIndex = 3
            myPageControl.currentPage = 3
            myPickerView.selectRow(Int(mySlider.value), inComponent: 0, animated: true)
            
            progress = 0.8
            
        default:
            mySegmentedControl.selectedSegmentIndex = 4
            myPageControl.currentPage = 4
            myPickerView.selectRow(Int(mySlider.value), inComponent: 0, animated: true)
            progress = 1
            
        }
        myProgressView.progress = progress
        
    }
    
    @IBAction func myStepperAction(_ sender: Any) {
        
        let value = myStepper.value
        mySlider.value = Float(value)
        mySegmentedControl.selectedSegmentIndex = Int(value)
        myPageControl.currentPage = Int(value)
        myPickerView.selectRow(Int(value), inComponent: 0, animated: true)
        
        myStepperLabel.text = "\(value)"
    }
    
    @IBAction func mySwitchAction(_ sender: Any) {
        
        if mySwitch.isOn {
            myPickerView.isHidden = false
            myActivityIndicator.stopAnimating()
            //myActivityIndicator.isHidden = true
            
            mySwitchLabel.text = "Está encendido"
        } else {
            myPickerView.isHidden = true
            myActivityIndicator.startAnimating()
            //myActivityIndicator.isHidden = false
            mySwitchLabel.text = "Está apagado"
        }
    }
}




// MARK: - Extensions -
extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerViewValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myPickerViewValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myString = myPickerViewValues[row]
        myButton.setTitle(myString, for: .normal)
        
        myPageControl.currentPage = row
        
        mySegmentedControl.selectedSegmentIndex = row
        
        mySlider.value = Float(row)
    }
    
}

// UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        myButton.setTitle(myTextField.text, for: .normal)
    }
}

// UITextViewDelegate
extension ViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        myTextView.isHidden = true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        myTextView.isHidden = false
    }
}

