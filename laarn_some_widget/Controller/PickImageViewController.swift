//
//  PickImageViewController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 14/02/25.
//

import UIKit

class PickImageViewController: UIViewController, UINavigationControllerDelegate,
    UIImagePickerControllerDelegate
{

    @IBAction func OnClick(_ sender: UIButton) {
        let imagePickerController = UIImagePickerController()

        imagePickerController.delegate = self
        imagePickerController.sourceType = .photoLibrary

        self.present(imagePickerController, animated: true)

    }

    func imagePickerController(
        _ picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey:
            Any]
    ) {
        image.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true)
    }

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
