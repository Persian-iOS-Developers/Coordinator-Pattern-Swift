//
//  TopRatedViewController.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

protocol TopRatedViewControllerDelegate: AnyObject {
    func nextButtonTaped()
}

class TopRatedViewController: UIViewController {

    var name: String!
    weak var delegate: TopRatedViewControllerDelegate?

    @IBOutlet weak var nameLabel: UILabel!

    @IBAction func nextButtonTouchUpInSide(_ sender: Any) {
        delegate?.nextButtonTaped()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Hi \(name ?? "Dear")!"
    }
}
