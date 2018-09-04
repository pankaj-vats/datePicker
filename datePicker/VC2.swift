
//
// VC2.swift
//  datePicker
//
//  Created by pankaj vats on 11/07/18.
//  Copyright © 2018 pankaj vats. All rights reserved.
//

import UIKit

class VC2: UIViewController {
    
    @IBOutlet weak var dateField: UITextField!
    
    @IBOutlet weak var dateField2: UITextField!
    
    let datePicker = UIDatePicker()
    let datePicker2 = UIDatePicker()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDatePicker()
        createDatePicker2()
        
        //   TO DISABLE PREVIOUS DATES
        
        datePicker.minimumDate = Date()
    
        dateField2.isEnabled = false
        
        
    }
    
    
    func createDatePicker() {
        
        //  format the Display of DatePicker
        datePicker.datePickerMode = .date
        
        //   Assign DatePicker to our TextField
        dateField.inputView = datePicker
        
//        dateField2.inputView = datePicker
        
        
        //   CREATE TOOLBAR
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //   ADD A DONE BUTTON ON TOOLBAR
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done
            , target: nil, action: #selector(doneClicked))
        
        toolbar.setItems([doneButton], animated: true)
        
        dateField.inputAccessoryView = toolbar
        
//        dateField2.inputAccessoryView = toolbar
        
        
    }
    func createDatePicker2() {
        
        //  format the Display of DatePicker
        datePicker2.datePickerMode = .date
        
        //   Assign DatePicker to our TextField
//        dateField.inputView = datePicker
        
        dateField2.inputView = datePicker2
        
        
        //   CREATE TOOLBAR
        
        let toolbar2 = UIToolbar()
        toolbar2.sizeToFit()
        
        //   ADD A DONE BUTTON ON TOOLBAR
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done
            , target: nil, action: #selector(doneClicked))
        
        toolbar2.setItems([doneButton], animated: true)
        
//        dateField.inputAccessoryView = toolbar
        
        dateField2.inputAccessoryView = toolbar2
        
        
    }
    
    @objc func doneClicked() {
        
        //     format the DATE  Display in TextField
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        if dateField.isFirstResponder
        {
            dateField.text = dateFormatter.string(from: datePicker.date)
            self.view.endEditing(true)
            dateField2.isEnabled = true
            
            datePicker2.minimumDate = dateFormatter.date(from: dateField.text!)
        }
        else
        {
            dateField2.text = dateFormatter.string(from: datePicker2.date)
            self.view.endEditing(true)
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func showDate(_ sender: Any) {
        
        
    }
    
}

