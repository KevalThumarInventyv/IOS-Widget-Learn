//
//  MultipleCollectionViewController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 14/02/25.
//

import UIKit

class MultipleCollectionViewController: UIViewController {

    var arrImageData = [String: [UIImage]]()

    @IBOutlet weak var backGroundCollectionView: UICollectionView!

    @IBOutlet weak var forGroundCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        arrImageData = [
            "backgroundImage": [
                #imageLiteral(resourceName: "img03"),
                #imageLiteral(resourceName: "img04"),
                #imageLiteral(resourceName: "img02"),
                #imageLiteral(resourceName: "img00"),
                #imageLiteral(resourceName: "img05"),
                #imageLiteral(resourceName: "img06"),
                #imageLiteral(resourceName: "img01"),
                #imageLiteral(resourceName: "img03"),
                #imageLiteral(resourceName: "img04"),
                #imageLiteral(resourceName: "img02"),
                #imageLiteral(resourceName: "img00"),
                #imageLiteral(resourceName: "img05"),
                #imageLiteral(resourceName: "img06"),
                #imageLiteral(resourceName: "img01"),
            ],
            "foregroundImage": [
                #imageLiteral(resourceName: "img03"),
                #imageLiteral(resourceName: "img04"),
                #imageLiteral(resourceName: "img02"),
                #imageLiteral(resourceName: "img00"),
                #imageLiteral(resourceName: "img05"),
                #imageLiteral(resourceName: "img06"),
                #imageLiteral(resourceName: "img01"),
                #imageLiteral(resourceName: "img03"),
                #imageLiteral(resourceName: "img04"),
                #imageLiteral(resourceName: "img05"),
                #imageLiteral(resourceName: "img06"),
                #imageLiteral(resourceName: "img01"),
                #imageLiteral(resourceName: "img03"),
                #imageLiteral(resourceName: "img04"),
            ],
        ]

        // Do any additional setup after loading the view.
    }

}

extension MultipleCollectionViewController: UICollectionViewDataSource,
    UICollectionViewDelegateFlowLayout
{
    func collectionView(
        _ collectionView: UICollectionView, numberOfItemsInSection section: Int
    ) -> Int {

        if collectionView == self.backGroundCollectionView {
            if let arrayImage = arrImageData["backgroundImage"] {
                return arrayImage.count
            }
        } else {
            if let arrayImage = arrImageData["foregroundImage"] {
                return arrayImage.count
            }
        }
        return 0
    }

    func collectionView(
        _ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell =
            collectionView.dequeueReusableCell(
                withReuseIdentifier: "cell", for: indexPath)
            as! MultipleCollectionViewCell
        if collectionView == self.backGroundCollectionView {
            if let arrayImage = arrImageData["backgroundImage"] {
                cell.bgImage.image = arrayImage[indexPath.row]
            }
        } else {
            if let arrayImage = arrImageData["foregroundImage"] {
                cell.bgImage.image = arrayImage[indexPath.row]
            }
        }

        return cell
    }

    func collectionView(
        _ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath
    ) {

        backGroundCollectionView.scrollToItem(
            at: indexPath, at: .centeredHorizontally, animated: true)

        forGroundCollectionView.scrollToItem(
            at: indexPath, at: .centeredHorizontally, animated: true)
        print(indexPath)

    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {

        if collectionView == self.backGroundCollectionView {
            return CGSize(
                width: collectionView.frame.width,
                height: collectionView.frame.height)
        } else {
            return CGSize(
                width: collectionView.frame.height,
                height: collectionView.frame.height)
        }

    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int
    ) -> CGFloat {
        if collectionView == self.backGroundCollectionView {
            return 0
        } else {
            return 5
        }
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumInteritemSpacingForSectionAt section: Int
    ) -> CGFloat {
        return 0
    }
}
