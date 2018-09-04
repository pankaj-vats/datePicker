//
//  ViewController.swift
//  datePicker
//
//  Created by pankaj vats on 11/07/18.
//  Copyright © 2018 pankaj vats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateField: UITextField!
    
    let datePicker = UIDatePicker()
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDatePicker()
        
//   TO DISABLE PREVIOUS DATES
        
        datePicker.minimumDate = Date()
     }

    
    func createDatePicker() {
        
//  format the Display of DatePicker
        datePicker.datePickerMode = .date
 
//   Assign DatePicker to our TextField
        dateField.inputView = datePicker
        
//   CREATE TOOLBAR
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
//   ADD A DONE BUTTON ON TOOLBAR
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done
            , target: nil, action: #selector(doneClicked))
        
        toolbar.setItems([doneButton], animated: true)
        
        dateField.inputAccessoryView = toolbar
        
    }
    
    @objc func doneClicked() {
    
//     format the DATE  Display in TextField
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        dateField.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }

    @IBAction func showDate(_ sender: Any) {
        
        
    }
    
}

