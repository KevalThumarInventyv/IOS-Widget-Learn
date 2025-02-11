//
//  ViewController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 11/02/25.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var background: UIView!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var lable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lable.text = "Switch is OFF"
        // Do any additional setup after loading the view.
    }

    @IBAction func valueChange(_ sender: UISwitch) {
        if switch1.isOn {
            lable.text = "Switch is ON"
            lable.textColor = .white
            background.backgroundColor = .black
            switch1.onTintColor = .white
            switch1.thumbTintColor = .black
        }
        else{
            lable.text = "Switch is OFF"
            lable.textColor = .black
            background.backgroundColor = .white
            switch1.thumbTintColor = .black
        }
    }
    
}

