//
//  MostViewedViewController.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class MostViewedViewController: UIViewController {

    @IBOutlet weak var numberOfRowTextField: UITextField!

    @IBAction func nextButtonTouchUpInSide(_ sender: Any) {
        let mostViewedTVC = UIInstance.mostViewedTVC
        mostViewedTVC.numberOfRow = numberOfRowTextField.text ?? "1"
        self.show(mostViewedTVC, sender: self)
        self.view.endEditing(true)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.navigationController?.isNavigationBarHidden = true
    }
}
