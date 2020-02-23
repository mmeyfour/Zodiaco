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
    var userAgeConverted : Double?
    var userMonthConverted : Double?
    var userDayConverted : Double?
    var dateConverted = ""
    
    
    
    
    // MARK: - IBOutlets
    @IBOutlet weak var dateQuestion: UILabel!
    @IBOutlet weak var dayLabel: UITextField!
    @IBOutlet weak var monthLabel: UITextField!
    @IBOutlet weak var ageLabel: UITextField!
    @IBOutlet weak var goButton: UIButton!
    
    
    // MARK: - IBAction
    
    @IBAction func didTapButton(_ sender: Any) {
        userAge = ageLabel.text!
        userMonth = monthLabel.text!
        userDay = dayLabel.text!
        dateConverted = "\(userAge)" + "\(userMonth)" + "\(userDay)"
        print("su fecha de cumpleaños es \(dateConverted)")
        
        guard let dateInDouble = Double(dateConverted) else {return}
        if dateInDouble < 19900101 || dateInDouble > 20001231 {
            goButton.isEnabled = false
        }
        
    }
    
    
    // MARK: - Function
    override func viewDidLoad() {
        super.viewDidLoad()
               goButton.isEnabled = false
        // Do any additional setup after loading the view.
    }


}

