//
//  ViewController.swift
//  Zodiaco
//
//  Created by Mersad Meyfour Asadi on 20/02/2020.
//  Copyright © 2020 Mersad Meyfour Asadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var userAge = ""
    var userMonth = ""
    var userDay = ""
    var dateConverted = ""
    
    // MARK: - IBOutlets
    @IBOutlet weak var firestQuestion: UILabel!
    @IBOutlet weak var dayLabel: UITextField!
    @IBOutlet weak var monthLabel: UITextField!
    @IBOutlet weak var ageLabel: UITextField!
    
    
    // MARK: - IBAction
    
    @IBAction func didTapButton(_ sender: Any) {
        userAge = dayLabel.text!
        userMonth = monthLabel.text!
        userDay = ageLabel.text!
        dateConverted = userAge + userMonth + userDay
        print("su fecha de cumpleaños es \(dateConverted)")
    }
    
    
    // MARK: - Function
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

