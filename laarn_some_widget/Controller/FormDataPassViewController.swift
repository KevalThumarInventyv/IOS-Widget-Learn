//
//  FormDataPassViewController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 12/02/25.
//

import UIKit

class FormDataPassViewController: UIViewController {

    @IBAction func SendDataToNextScreenOnClick(_ sender: UIButton) {
        let toDataPassScreen: ToDataPassViewController =
            self.storyboard?.instantiateViewController(
                withIdentifier: "ToDataPassViewController")
            as! ToDataPassViewController

        toDataPassScreen.strEmail = Email.text
        toDataPassScreen.strName	 = Name.text

        self.navigationController?.pushViewController(
            toDataPassScreen, animated: true)
    }
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
