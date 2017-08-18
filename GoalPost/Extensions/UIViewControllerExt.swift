//
//  UIViewControllerExt.swift
//  GoalPost
//
//  Created by Marcus Ng on 8/18/17.
//  Copyright © 2017 Marcus Ng. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // Present - Right to left
    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    // Dismiss - Left to right
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        dismiss(animated: false, completion: nil)
    }
    
}
