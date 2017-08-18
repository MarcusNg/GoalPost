//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Marcus Ng on 8/18/17.
//  Copyright © 2017 Marcus Ng. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    // Outlets
    @IBOutlet weak var pointsTF: UITextField!
    @IBOutlet weak var createGoalBtn: UIButton!
    
    // Vars
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createGoalBtn.bindToKeyboard()
        pointsTF.delegate = self
    }
    
    @IBAction func createGoalBtnPressed(_ sender: Any) {
        // Pass data into Core Data Model
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
