//
//  FruitDetailsViewController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 13/02/25.
//

import UIKit

class FruitDetailsViewController: UIViewController {

    @IBOutlet weak var dlbl2: UITextView!
    @IBOutlet weak var dlbl1: UINavigationBar!
    @IBOutlet weak var dimg: UIImageView!

    var strlable1: String!
    var strlable2: String!
    var strimage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        dlbl2.text = strlable2
        self.title = strlable1
        dimg.image = strimage
    }
}
