//
//  UserSignViewController.swift
//  Zodiaco
//
//  Created by Mersad Meyfour Asadi on 23/02/2020.
//  Copyright © 2020 Mersad Meyfour Asadi. All rights reserved.
//

import UIKit

class UserSignViewController: UIViewController {

    @IBOutlet weak var segController: UISegmentedControl!
    @IBOutlet weak var userZodiacImage: UIImageView!
    @IBOutlet weak var userZodiacText: UITextView!
    
    @IBAction func changeValue(_ sender: UISegmentedControl) {
        updateUI()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func updateUI(){
    let index = segController.selectedSegmentIndex
        switch index {
        case 0:
            
            userZodiacImage.isHidden = false
            userZodiacText.isHidden = false
            
        default:
            userZodiacText.isHidden = true
            userZodiacImage.isHidden = true
        }
        
    }
}
