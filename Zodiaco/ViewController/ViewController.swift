//
//  ViewController.swift
//  Zodiaco
//
//  Created by Mersad Meyfour Asadi on 20/02/2020.
//  Copyright © 2020 Mersad Meyfour Asadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dateInArray = [0,0,0]
    var zodiacSign: ZodiacSign!
    
    // MARK: - IBOutlets
    @IBOutlet weak var dateQuestion: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var goButton: UIButton!
    
    
    // MARK: - IBAction
    
    @IBAction func userDidPickDate(_ sender: UIDatePicker) {
        goButton.isEnabled = true
        
    }
    
    @IBAction func didTapGoButton(_ sender: UIButton) {
        dateInArray = dateConvert(datePicker.date)
        goButton.isEnabled = false
    }
    
    // MARK: - Function
    override func viewDidLoad() {
        super.viewDidLoad()
        goButton.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    func dateConvert(_ date: Date) -> Array<Int> {
        let dateInString = date.description
        let dateSpliteinBlank = dateInString.split(separator: " ")
        let dateSplited = dateSpliteinBlank[0].split(separator: "-")
        let year = Int(dateSplited[0])
        let month = Int(dateSplited[1])
        let day = Int(dateSplited[2])
        return [year!,month!,day!]
    }
    
    func dateConvert(date: String) -> Date {
        let dateFormate = DateFormatter()
        dateFormate.dateFormat = "dd/MM/yyyy"
        
        return dateFormate.date(from: date)!
    }
    func chooseZodiacByDate() {
           let chosenDate = datePicker.date
           
           if dateConvert(date: "06/02/1989") <= chosenDate
               && dateConvert(date: "26/01/1990") >= chosenDate{
               
               zodiacSign = snape
           }
           else if dateConvert(date: "27/01/1990") <= chosenDate
               && dateConvert(date: "14/02/1991") >= chosenDate{
               
               zodiacSign = horse
           }
           else if dateConvert(date: "15/02/1991") <= chosenDate
               && dateConvert(date: "03/02/1992") >= chosenDate {
               
               zodiacSign = goat
           }
           else if dateConvert(date: "04/02/1992") <= chosenDate
               && dateConvert(date: "22/01/1993") >= chosenDate{
               
               zodiacSign = monkey
           }
           else if dateConvert(date: "23/01/1993") <= chosenDate
               && dateConvert(date: "09/02/1994") >= chosenDate {
               
               zodiacSign = rooster
           }
           else if dateConvert(date: "10/02/1994") <= chosenDate
               && dateConvert(date: "30/01/1995") >= chosenDate {
               
               zodiacSign = dog
           }
           else if dateConvert(date: "31/01/1995") <= chosenDate
               && dateConvert(date: "18/02/1996") >= chosenDate {
               
               zodiacSign = pig
           }
           else if dateConvert(date: "19/02/1996") <= chosenDate
               && dateConvert(date: "07/02/1997") >= chosenDate {
               
               zodiacSign = rat
           }
           else if dateConvert(date: "08/02/1997") <= chosenDate
               && dateConvert(date: "27/01/1998") >= chosenDate {
               
               zodiacSign = ox
           }
           else if dateConvert(date: "28/01/1998") <= chosenDate
               && dateConvert(date: "15/02/1999") >= chosenDate {
               
               zodiacSign = tiger
           }
           else if dateConvert(date: "16/02/1999") <= chosenDate
               && dateConvert(date: "04/02/2000") >= chosenDate {
               
               zodiacSign = hare
           }
           else if dateConvert(date: "05/02/2000") <= chosenDate
               && dateConvert(date: "23/01/2001") >= chosenDate {
               
               zodiacSign = dragon
           }
           
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? UserSignViewController else { return }
        
        destination.userDate = dateInArray
        
    }
}

