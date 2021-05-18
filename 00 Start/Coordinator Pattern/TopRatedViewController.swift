//
//  TopRatedViewController.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class TopRatedViewController: UIViewController {

    var name: String!

    @IBOutlet weak var nameLabel: UILabel!

    @IBAction func nextButtonTouchUpInSide(_ sender: Any) {
        let emptyVC = UIInstance.emptyVC
        self.show(emptyVC, sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Hi \(name ?? "Dear")!"
    }
}
