//
//  ViewController.swift
//  WalFinder
//
//  Created by Christopher Lambert on 8/6/17.
//  Copyright © 2017 chrlambert. All rights reserved.
//

import UIKit

extension Date {
    func dayNumberOfWeek() -> Int? {
        return Calendar.current.dateComponents([.weekday], from: self).weekday
    }
}

// returns an integer from 1 - 7, with 1 being Sunday and 7 being Saturday

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if Date().dayNumberOfWeek()! == 3 {
            self.mealNameLabel.text = "Yes :)"
        }
        else {
            self.mealNameLabel.text = "No :("
        }
    }
    
    //MARK: Actions
    
    
    @IBAction func refreshing(_ sender: UIButton) {
        if Date().dayNumberOfWeek()! == 3 {
            self.mealNameLabel.text = "Yes :)"
        }
        else {
            self.mealNameLabel.text = "Still No :("
        }
    }
    
}

