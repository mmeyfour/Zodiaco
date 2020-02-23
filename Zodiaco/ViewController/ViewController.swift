//
//  ViewController.swift
//  Zodiaco
//
//  Created by Mersad Meyfour Asadi on 20/02/2020.
//  Copyright © 2020 Mersad Meyfour Asadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - IBOutlets
    @IBOutlet weak var dateQuestion: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var goButton: UIButton!
    
    
    // MARK: - IBAction
    
    @IBAction func userDidPickDate(_ sender: UIDatePicker) {
        goButton.isEnabled = true
        
    }
    
    @IBAction func didTapGoButton(_ sender: UIButton) {
        dateConvert(datePicker.date)
    }
    
    // MARK: - Function
    override func viewDidLoad() {
        super.viewDidLoad()
        goButton.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    func dateConvert(_ date: Date){
        let dateInString = date.description
        let dateSpliteinBlank = dateInString.split(separator: " ")
        let dateSplited = dateSpliteinBlank[0].split(separator: "-")
        let year = Int(dateSplited[0])
        let month = Int(dateSplited[1])
        let day = Int(dateSplited[2])
        print(year ?? 0)
        print(month ?? 0)
        print(day ?? 0)
    }
    
}

