//
//  AlertController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 11/02/25.
//

import Foundation
import UIKit

class AlertController: UIViewController {
    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(
            title: "My Title Here", message: "My Message Here",
            preferredStyle: .alert)
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) {
            (action) in
            print("Cancel button tapped")
        }
        let distinctButton = UIAlertAction(
            title: "Distinct", style: .destructive
        ) {
            (action) in
            print("Distinct button tapped")
        }
        let defaultButton = UIAlertAction(title: "Default", style: .default) {
            (action) in
            print("Default button tapped")
        }
        alert.addAction(defaultButton)
        alert.addAction(distinctButton)
        alert.addAction(cancelButton)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func showAction(_ sender: UIButton) {
        let sheet = UIAlertController(
            title: "My Title Here", message: "My Message Here",
            preferredStyle: .actionSheet)
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) {
            (action) in
            print("Cancel button tapped")
        }
        let distinctButton = UIAlertAction(
            title: "Distinct", style: .destructive
        ) {
            (action) in
            print("Distinct button tapped")	
        }
        let defaultButton = UIAlertAction(title: "Default", style: .default) {
            (action) in
            print("Default button tapped")
        }
        sheet.addAction(defaultButton)
        sheet.addAction(distinctButton)
        sheet.addAction(cancelButton)
        present(sheet, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
