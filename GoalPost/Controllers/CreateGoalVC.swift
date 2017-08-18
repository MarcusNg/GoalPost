//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Marcus Ng on 8/18/17.
//  Copyright © 2017 Marcus Ng. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    // Outlets
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func shortTermBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func longTermBtnPressed(_ sender: Any) {
        
    }

    @IBAction func nextBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
}
