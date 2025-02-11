//
//  stepperController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 11/02/25.
//

import UIKit

class StapperController: UIViewController {

    @IBOutlet weak var step: UILabel!

    @IBOutlet weak var staper: UIStepper!
    @IBAction func OnChange(_ sender: UIStepper) {
        step.text = String(Int(sender.value))

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Change symbol color
        staper.tintColor = .white

        // Change button background color
        for view in staper.subviews {
            view.backgroundColor = .darkGray  // Set to any color you like
        }

        // Alternatively, you can set custom images for more control
        staper.setDecrementImage(
            UIImage(systemName: "minus.circle.fill")?.withTintColor(
                .red, renderingMode: .alwaysOriginal), for: .normal)
        staper.setIncrementImage(
            UIImage(systemName: "plus.circle.fill")?.withTintColor(
                .green, renderingMode: .alwaysOriginal), for: .normal)
    }

}
