//
//  UserSignViewController.swift
//  Zodiaco
//
//  Created by Mersad Meyfour Asadi on 23/02/2020.
//  Copyright © 2020 Mersad Meyfour Asadi. All rights reserved.
//

import UIKit

class UserSignViewController: UIViewController {
    
    //MARK: - Variables
    var userDate = [0,0,0]
    var userZodiac: ZodiacSign!
    
    //MARK: - IBOutlets
    @IBOutlet weak var segController: UISegmentedControl!
    @IBOutlet weak var userZodiacImage: UIImageView!
    @IBOutlet weak var userZodiacLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var elementImage: UIImageView!
    @IBOutlet weak var firstAfinityImage: UIImageView!
    @IBOutlet weak var secondAfinityImage: UIImageView!
    @IBOutlet weak var secondUserZodiacLabel: UILabel!
    @IBOutlet weak var aspecttImage: UIImageView!
    
    //MARK: - IBAction
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
    //MARK: - Function
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
            secondUserZodiacLabel.isHidden = true
            aspecttImage.isHidden = true
            
        case 1:
            
            pageControl.currentPage = 1
            userZodiacImage.isHidden = true
            userZodiacLabel.isHidden = true
            elementImage.isHidden = false
            firstAfinityImage.isHidden = false
            secondAfinityImage.isHidden = false
            secondUserZodiacLabel.isHidden = false
            aspecttImage.isHidden = false
            
        default:
            
            pageControl.currentPage = 0
            userZodiacImage.isHidden = false
            userZodiacLabel.isHidden = false
            elementImage.isHidden = true
            firstAfinityImage.isHidden = true
            secondAfinityImage.isHidden = true
            secondUserZodiacLabel.isHidden = true
            aspecttImage.isHidden = true
            
        }
    }
    
    func userLabelActualization(){
        
        userZodiacLabel.text = "Su signo zodiaco chino es \(userZodiac.name), es destacado por ser \(userZodiac.description)."
        userZodiacImage.image = userZodiac.animalImage
        elementImage.image = userZodiac.elementImage
        firstAfinityImage.image = UIImage(named: userZodiac.firstAfinity)
        secondAfinityImage.image = UIImage(named: userZodiac.secondAfinity)
        secondUserZodiacLabel.text = "El elemento correspondiente a su signo zodiaco es \(userZodiac.element) de aspecto \(userZodiac.aspect) y es compatible con \(userZodiac.firstAfinity) y \(userZodiac.secondAfinity)"
        if userZodiac.aspect == "Yin"{
            view.backgroundColor = UIColor.white
            aspecttImage.image = UIImage(named:"YangYin")
        } else {
            view.backgroundColor = UIColor.gray
            aspecttImage.image = UIImage(named:"YinYang")
        }
    }
}
