//
//  resultViewClontrollViewController.swift
//  BMI Calculator
//
//  Created by William Huang on 2023/8/3.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class resultViewClontrollViewController: UIViewController {
    
    var BMIValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = BMIValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePresed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
