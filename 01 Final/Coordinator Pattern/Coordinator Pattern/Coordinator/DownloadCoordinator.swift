//
//  DownloadCoordinator.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class DownloadCoordinator: Coordinator, TabBarVCCoordinator {

    var viewController: UIViewController

    init() {
        var downloadsVC: UIViewController!
        downloadsVC = UICoordinator.downloadsVC
        self.viewController = downloadsVC
    }
    
    func start() {
    }
}
