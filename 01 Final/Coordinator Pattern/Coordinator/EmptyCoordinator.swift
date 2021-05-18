//
//  EmptyCoordinator.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/18/21.
//

import UIKit

class EmptyCoordinator: Coordinator {

    private var presenter: UIViewController
    private var emptyVC: UIViewController!

    init(presenter: UIViewController) {
        self.presenter = presenter
        self.emptyVC = UIInstance.emptyVC
    }

    func start() {
        presenter.show(self.emptyVC, sender: self)
    }
}
