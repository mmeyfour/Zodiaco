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
    var userMonth = 0
    var userDay = 0
    
    
    
    // MARK: - IBOutlets
    @IBOutlet weak var dateQuestion: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var goButton: UIButton!
    
    
    // MARK: - IBAction
    
    @IBAction func userDidPickDate(_ sender: UIDatePicker) {
        goButton.isEnabled = true
        
    }
    
    @IBAction func didTapGoButton(_ sender: UIButton) {
    
    }
    
    // MARK: - Function
    override func viewDidLoad() {
        super.viewDidLoad()
        goButton.isEnabled = false
        // Do any additional setup after loading the view.
    }

    
}

