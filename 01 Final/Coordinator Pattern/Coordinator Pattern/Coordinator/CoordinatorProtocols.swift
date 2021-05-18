//
//  CoordinatorProtocols.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

protocol Coordinator {

    func start()
}


protocol TabBarVCCoordinator {

    var viewController: UIViewController { get }
}
