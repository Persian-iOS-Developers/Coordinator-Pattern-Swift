//
//  MostViewedViewController.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

protocol MostViewedViewControllerDelegate: AnyObject {
    func nextButtonTaped(numberOfRow: String)
}

class MostViewedViewController: UIViewController {

    weak var delegate: MostViewedViewControllerDelegate?

    @IBOutlet weak var numberOfRowTextField: UITextField!

    @IBAction func nextButtonTouchUpInSide(_ sender: Any) {
        delegate?.nextButtonTaped(numberOfRow: numberOfRowTextField.text ?? "1")
        self.view.endEditing(true)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.navigationController?.isNavigationBarHidden = true
    }
}
