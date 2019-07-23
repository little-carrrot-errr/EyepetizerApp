//
//  EYEBaseViewController.swift
//  EyepetizerApp
//
//   13.
//     
//

import UIKit

class EYEBaseViewController : UIViewController {
    var selectCell : EYEChoiceCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.delegate = self
    }
}

extension EYEBaseViewController : UINavigationControllerDelegate {
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        if operation == .Push && toVC is EYEVideoDetailController {
            return EYEVideoDetailPushTransition()
        }
        return nil
    }
}