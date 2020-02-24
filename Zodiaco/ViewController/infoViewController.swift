//
//  infoViewController.swift
//  Zodiaco
//
//  Created by Mersad Meyfour Asadi on 24/02/2020.
//  Copyright © 2020 Mersad Meyfour Asadi. All rights reserved.
//

import UIKit


class infoViewController: UIViewController {
    //MARK: - Variables
    var infozodiacSign: ZodiacSign!
    
    //MARK: - IBAction
    @IBAction func oxButton(_ sender: UIButton) {
        infozodiacSign = ox
    }
    @IBAction func horseButton(_ sender: UIButton) {
        infozodiacSign = horse
    }
    @IBAction func ratButton(_ sender: UIButton) {
        infozodiacSign = rat
    }
    @IBAction func snapeButton(_ sender: UIButton) {
        infozodiacSign = snape
    }
    @IBAction func goatButton(_ sender: UIButton) {
        infozodiacSign = goat
    }
    @IBAction func pigButton(_ sender: UIButton) {
        infozodiacSign = pig
    }
    @IBAction func dragontButton(_ sender: UIButton) {
        infozodiacSign = dragon
    }
    @IBAction func roosterButton(_ sender: UIButton) {
        infozodiacSign = rooster
    }
    @IBAction func hareButton(_ sender: UIButton) {
        infozodiacSign = hare
    }
    @IBAction func monkeyButton(_ sender: UIButton) {
        infozodiacSign = monkey
    }
    @IBAction func dogButton(_ sender: UIButton) {
        infozodiacSign = dog
    }
    @IBAction func tigerButton(_ sender: UIButton) {
        infozodiacSign = tiger
    }
    //MARK: - Function
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? UserSignViewController else { return }
        
        destination.userZodiac = infozodiacSign
    }
}
