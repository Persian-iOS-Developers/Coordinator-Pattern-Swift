//
//  DetailsViewController.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class DetailsViewController: UIViewController {

    var rowNumber: Int = 0

    @IBOutlet weak var detailLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        detailLabel.text = "\(rowNumber)"
    }
}
