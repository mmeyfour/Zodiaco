//
//  UserSignViewController.swift
//  Zodiaco
//
//  Created by Mersad Meyfour Asadi on 23/02/2020.
//  Copyright © 2020 Mersad Meyfour Asadi. All rights reserved.
//

import UIKit

class UserSignViewController: UIViewController {

    var userDate = [0,0,0]
    var userZodiac: ZodiacSign!
    
    @IBOutlet weak var segController: UISegmentedControl!
    @IBOutlet weak var userZodiacImage: UIImageView!
    @IBOutlet weak var userZodiacLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var elementImage: UIImageView!
    @IBOutlet weak var firstAfinityImage: UIImageView!
    @IBOutlet weak var secondAfinityImage: UIImageView!
    
    
    @IBAction func didTapPageValue(_ sender: UIPageControl) {
        if pageControl.currentPage == 0 {
            segController.selectedSegmentIndex = 0
            updateUI()
        } else {
            segController.selectedSegmentIndex = 1
            updateUI()
        }
        
        
    }
    
    @IBAction func changeValue(_ sender: UISegmentedControl) {
        updateUI()
        print(userDate)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    func updateUI(){
    let index = segController.selectedSegmentIndex
        userLabelActualization()
        switch index {
        case 0:
            pageControl.currentPage = 0
            userZodiacImage.isHidden = false
            userZodiacLabel.isHidden = false
            elementImage.isHidden = true
            firstAfinityImage.isHidden = true
            secondAfinityImage.isHidden = true
            
        default:
            pageControl.currentPage = 1
            userZodiacLabel.isHidden = true
            userZodiacImage.isHidden = true
            elementImage.isHidden = false
            firstAfinityImage.isHidden = false
            secondAfinityImage.isHidden = false
            
        }
        
    }
    
    func userLabelActualization(){
        
        userZodiacLabel.text = "Su signo zodiaco chino es \(userZodiac.name), es destacado por ser \(userZodiac.description)."
        userZodiacImage.image = userZodiac.animalImage
        elementImage.image = userZodiac.elementImage
  
    }
        
    /*
    func UserZodiacAnimal(_ dateInArray: Array<Int>) -> ZodiacSign {
        let year = dateInArray[0]
        let month = dateInArray[1]
        let day = dateInArray[2]
        let diasseguidos = String(dateInArray[0]) + String(dateInArray[1]) + String(dateInArray[2])
        
        if year > snape.fromYear && year < snape.toYear {
            return snape
        }
        
        return snape
    }
 */
}
