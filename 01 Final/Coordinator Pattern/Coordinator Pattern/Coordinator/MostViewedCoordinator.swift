//
//  MostViewedCoordinator.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class MostViewedCoordinator: Coordinator, TabBarVCCoordinator {

    var viewController: UIViewController
    private var mostViewedVC: MostViewedViewController
    private var mostViewedTableViewCoordinator: MostViewedTableViewCoordinator!

    init() {
        let mostViewedNC =  UICoordinator.mostNC
        mostViewedVC = UICoordinator.mostViewedVC
        mostViewedNC.setViewControllers([mostViewedVC], animated: true)
        self.viewController = mostViewedNC
    }

    func start() {
        mostViewedVC.delegate = self
    }
}

extension MostViewedCoordinator: MostViewedViewControllerDelegate {

    func nextButtonTaped(numberOfRow: String) {
        self.mostViewedTableViewCoordinator = MostViewedTableViewCoordinator(presenter: mostViewedVC, numberOfRow: numberOfRow)
        self.mostViewedTableViewCoordinator.start()
    }
}
