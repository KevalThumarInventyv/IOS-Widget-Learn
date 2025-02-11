//
//  SecondViewController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 11/02/25.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func DetailVcClick(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func HomeClick(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }

}
