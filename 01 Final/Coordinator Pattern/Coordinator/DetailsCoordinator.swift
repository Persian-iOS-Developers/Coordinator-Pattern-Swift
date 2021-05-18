//
//  DetailsCoordinator.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/18/21.
//

import UIKit

class DetailsCoordinator: Coordinator {

    private var presenter: UIViewController
    private var detailsVC: DetailsViewController

    init(presenter: UIViewController, row: Int) {
        self.presenter = presenter
        self.detailsVC = UIInstance.detailsVC
        self.detailsVC.rowNumber = row
    }

    func start() {
        presenter.present(detailsVC, animated: true, completion: nil)
    }
}
