//
//  TopRatedCoordinator.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class TopRatedCoordinator: Coordinator, TabBarVCCoordinator {
    
    var viewController: UIViewController
    private var topRateVC: TopRatedViewController

    init(name: String?) {
        topRateVC = UICoordinator.topRatedVC
        topRateVC.name = name
        self.viewController = topRateVC
    }
    
    func start() {
        topRateVC.delegate = self
    }
}

extension TopRatedCoordinator: TopRatedViewControllerDelegate {

    func nextButtonTaped() {
        let emptyCoordinator = EmptyCoordinator(presenter: viewController)
        emptyCoordinator.start()
    }
}
