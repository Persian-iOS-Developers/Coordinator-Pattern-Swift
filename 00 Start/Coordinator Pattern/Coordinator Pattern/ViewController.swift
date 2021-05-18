//
//  ViewController.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let topRatedViewController = tabBarController.viewControllers?.first as? TopRatedViewController else { return }
        topRatedViewController.name = nameTextField.text
    }
}
