//
//  MainViewController.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

protocol MainViewControllerDelegate: AnyObject {

    func nextButtonTaped(name: String?)
}

class MainViewController: UIViewController {

    weak var delegate: MainViewControllerDelegate?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func nextButtonTouchUpInSide(_ sender: Any) {
        delegate?.nextButtonTaped(name: nameTextField.text)
    }
}
