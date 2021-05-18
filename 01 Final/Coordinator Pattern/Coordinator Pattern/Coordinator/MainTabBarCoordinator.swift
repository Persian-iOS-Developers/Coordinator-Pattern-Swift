//
//  MainTabBarCoordinator.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class MainTabBarCoordinator: Coordinator {
    
    private var presenter: UIViewController?
    
    private var tabBarController: UITabBarController!
    private let topRatedCoordinator: TopRatedCoordinator!
    private let mostViewedCoordinator: MostViewedCoordinator!
    private let downloadCoordinator: DownloadCoordinator!
    
    init(presenter: UIViewController, name: String?) {
        self.presenter = presenter
        
        self.topRatedCoordinator = TopRatedCoordinator(name: name)
        self.topRatedCoordinator.start()
        
        self.mostViewedCoordinator = MostViewedCoordinator()
        self.mostViewedCoordinator.start()
        
        self.downloadCoordinator = DownloadCoordinator()
        self.downloadCoordinator.start()
        
        tabBarController = UICoordinator.tabBarC
        tabBarController.viewControllers = [topRatedCoordinator.viewController,
                                            mostViewedCoordinator.viewController,
                                            downloadCoordinator.viewController]
    }
    
    func start() {
        self.tabBarController.modalPresentationStyle = .fullScreen
        presenter?.show(self.tabBarController, sender: self)
    }
}
