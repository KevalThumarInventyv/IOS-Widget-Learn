//
//  NavigationController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 11/02/25.
//

import UIKit

class NavigationController: UIViewController {
    @IBAction func DetailVCClick(_ sender: UIButton) {
        let detailVC =
            self.storyboard?.instantiateViewController(
                withIdentifier: "FirstViewController") as! FirstViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
