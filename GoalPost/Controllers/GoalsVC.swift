//
//  ViewController.swift
//  GoalPost
//
//  Created by Marcus Ng on 8/18/17.
//  Copyright © 2017 Marcus Ng. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("button pressed")
    }
    
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
        cell.configureCell(description: "Run three times a week", type: .longTerm, progressAmount: 0)
        return cell
    }
}
