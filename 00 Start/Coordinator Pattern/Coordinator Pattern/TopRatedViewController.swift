//
//  TopRatedViewController.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class TopRatedViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!

    var name: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Hi \(name ?? "Dear")!"
    }
}
