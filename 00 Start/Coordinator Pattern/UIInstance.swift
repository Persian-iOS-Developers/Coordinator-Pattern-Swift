//
//  UIInstance.swift
//  Coordinator Pattern
//
//  Created by Ramazan Karami on 5/17/21.
//

import UIKit

class UIInstance {

    static var mainVC: MainViewController {
        return instantiateViewController(identifier: "MainViewControllerID") as! MainViewController
    }

    static var tabBarC: UITabBarController {
        return instantiateViewController(identifier: "TabBarControllerID") as! UITabBarController
    }

    static var topRatedVC: TopRatedViewController {
        return instantiateViewController(identifier: "TopRatedViewControllerID") as! TopRatedViewController
    }

    static var mostViewedVC: MostViewedViewController {
        return instantiateViewController(identifier: "MostViewControllerID") as! MostViewedViewController
    }

    static var mostViewedTVC: MostViewedTableViewController {
        return instantiateViewController(identifier: "MostViewedTableViewControllerID") as! MostViewedTableViewController
    }

    static var detailsVC: DetailsViewController {
        return instantiateViewController(identifier: "DetailsViewControllerID") as! DetailsViewController
    }

    static var mostViewedNC: UINavigationController {
        return instantiateViewController(identifier: "MostNavigationControllerID") as! UINavigationController
    }

    static var downloadsVC: UIViewController {
        return instantiateViewController(identifier: "DownloadsViewControllerID")
    }

    static var emptyVC: UIViewController {
        return instantiateViewController(identifier: "EmptyViewControllerID")
    }
}

private extension UIInstance {

    private static var storyboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }

    private static func instantiateViewController(identifier: String) -> UIViewController {
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }

}
