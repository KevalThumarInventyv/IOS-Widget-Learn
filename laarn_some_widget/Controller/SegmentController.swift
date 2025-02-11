//
//  SegmentController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 11/02/25.
//

import UIKit

class SegmentController: UIViewController {

    @IBAction func valueChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            label.text = "Segment 1 is selected"
            Image.image = UIImage(named:"logo_1")
        case 1:
            label.text = "Segment 2 is selected"
            Image.image = UIImage(named:"logo_2")
        case 2:
            label.text = "Segment 3 is selected"
            Image.image = UIImage(named:"logo_3")
        default:
            label.text = "Segment 4 is selected"
            Image.image = UIImage(named:"logo_4")
        }
    }
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Segment is not selected"

    }
}
