//
//  MostViewedViewController.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class MostViewedViewController: UIViewController {

    @IBOutlet weak var numberOfRowTextField: UITextField!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.navigationController?.isNavigationBarHidden = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mostViewedTableViewController = segue.destination as? MostViewedTableViewController else { return }
        mostViewedTableViewController.numberOfRow = numberOfRowTextField.text ?? "1"
    }
}
