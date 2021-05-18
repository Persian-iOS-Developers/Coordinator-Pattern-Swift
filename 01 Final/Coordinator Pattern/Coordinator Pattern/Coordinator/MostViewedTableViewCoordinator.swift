//
//  MostViewedTableViewCoordinator.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/18/21.
//

import UIKit

class MostViewedTableViewCoordinator: NSObject, Coordinator {

    private var presenter: UIViewController
    private var mostViewedTVC: MostViewedTableViewController
    private var numberOfRow: String

    init(presenter: UIViewController, numberOfRow: String) {
        self.presenter = presenter
        self.mostViewedTVC = UICoordinator.mostViewedTVC
        self.numberOfRow = numberOfRow
    }

    func start() {
        mostViewedTVC.tableView.delegate = self
        mostViewedTVC.tableView.dataSource = self
        presenter.show(mostViewedTVC, sender: self)
    }
}

extension MostViewedTableViewCoordinator: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsCoordinator = DetailsCoordinator(presenter: mostViewedTVC, row: indexPath.row)
        detailsCoordinator.start()
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension MostViewedTableViewCoordinator: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(self.numberOfRow) ?? 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellID") ?? UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
}
