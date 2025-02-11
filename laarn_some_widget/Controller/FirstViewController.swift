//
//  FirstViewController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 11/02/25.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func DetailVcClick(_ sender: UIButton) {
        let detailVC =
            self.storyboard?.instantiateViewController(
                withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
    }

    @IBAction func HomeClick(_ sender: UIButton) {
        let home =
        self.storyboard?.instantiateViewController(withIdentifier: "NavigationController")
            as! NavigationController
        self.navigationController?.popViewController(animated: true)
    }
}
