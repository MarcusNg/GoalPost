//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Marcus Ng on 8/18/17.
//  Copyright © 2017 Marcus Ng. All rights reserved.
//

import UIKit
import CoreData

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
        self.save { (success) in
            if success {
                dismiss(animated: true, completion: nil)
            }
        }
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTF.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            print("Successfully saved")
            completion(true)
        } catch {
            debugPrint("Could not save \(error.localizedDescription)")
            completion(false)
        }
    }
    
}
