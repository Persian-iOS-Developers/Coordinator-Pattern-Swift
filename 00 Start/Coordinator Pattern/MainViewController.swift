//
//  MainViewController.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!

    @IBAction func nextButtonTouchUpInSide(_ sender: Any) {
        let tabBarController = UIInstance.tabBarC

        let topRatedVC = UIInstance.topRatedVC
        topRatedVC.name = nameTextField.text

        let mostVieweNC = UIInstance.mostViewedNC
        let mostViewedVC = UIInstance.mostViewedVC
        mostVieweNC.setViewControllers([mostViewedVC], animated: true)

        let downloadsVC = UIInstance.downloadsVC

        tabBarController.viewControllers = [topRatedVC,
                                            mostVieweNC,
                                            downloadsVC]

        tabBarController.modalPresentationStyle = .overFullScreen
        self.show(tabBarController, sender: self)
    }
}
