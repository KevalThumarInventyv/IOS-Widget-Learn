
//
//  ToDataPassViewController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 12/02/25.
//

import UIKit

class ToDataPassViewController: UIViewController {


    @IBOutlet weak var EmailLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    
    var strName:String? = nil
    var strEmail : String? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        EmailLabel.text = strEmail
        NameLabel.text = strName
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
