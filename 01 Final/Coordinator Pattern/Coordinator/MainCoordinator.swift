//
//  MainCoordinator.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class MainCoordinator: Coordinator {

    private let window: UIWindow?
    private let mainVC: MainViewController
    private var tabBarController: MainTabBarCoordinator!

    init(window: UIWindow?) {
        self.window = window
        self.mainVC = UIInstance.mainVC
    }

    func start() {
        self.mainVC.delegate = self
        window?.rootViewController = self.mainVC
        window?.makeKeyAndVisible()
    }
}

extension MainCoordinator: MainViewControllerDelegate {

    func nextButtonTaped(name: String?) {
        self.tabBarController = MainTabBarCoordinator(presenter: self.mainVC, name: name)
        self.tabBarController.start()
    }
}
