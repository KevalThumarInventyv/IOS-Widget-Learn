//
//  TextfieldController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 11/02/25.
//

import UIKit

class TextfieldController: UIViewController {

    @IBAction func OnSubmit(_ sender: UIButton) {
        if let name = Name.text, let phoneNumber = PhoneNumber.text,
            let password = Password.text
        {
            print("Name: \(name)")
            print("Phone Number: \(phoneNumber)")
            print("Password: \(password)")
        }
        Password.text = ""
        PhoneNumber.text = ""
        Name.text = ""
    }
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var PhoneNumber: UITextField!
    @IBOutlet weak var Name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
