//
//  FruitDetailCollectionViewController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 14/02/25.
//

import UIKit

class FruitDetailCollectionViewController: UIViewController {

    @IBOutlet weak var labelDetail: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!

    @IBOutlet weak var detailText: UITextView!
    var stringImageDetail: UIImage!
    var stringLabelDetail: String!
    var stringDescriptionDetail: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageDetail.image = stringImageDetail
        labelDetail.text = stringLabelDetail
        detailText.text = stringDescriptionDetail
    }

}
