//
//  MostViewedTableViewController.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class MostViewedTableViewController: UITableViewController {

    var numberOfRow: String!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        UIView.animate(withDuration: 0.3) {
            self.navigationController?.isNavigationBarHidden = false
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsViewController = segue.destination as? DetailsViewController else { return }
        detailsViewController.rowNumber = tableView.indexPathForSelectedRow?.row ?? 0
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(numberOfRow) ?? 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellID") ?? UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
}
