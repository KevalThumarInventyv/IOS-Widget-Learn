//
//  FruitViewController.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 14/02/25.
//

import UIKit

class FruitViewController: UIViewController, UICollectionViewDelegate,
    UICollectionViewDataSource
{

    //    for click on cell
    func collectionView(
        _ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath
    ) {
        let imageDetail =
            self.storyboard?.instantiateViewController(
                identifier: "FruitDetailCollectionViewController")
            as! FruitDetailCollectionViewController
        imageDetail.stringImageDetail = originalImageName[indexPath.row]!
        imageDetail.stringLabelDetail = originalTitleText[indexPath.row]
        imageDetail.stringDescriptionDetail = originalDetailText[indexPath.row]
        self.navigationController?.pushViewController(
            imageDetail, animated: true)

    }
    //    to show how much data is display on the screen
    func collectionView(
        _ collectionView: UICollectionView, numberOfItemsInSection section: Int
    ) -> Int {
        return originalDetailText.count
    }
    // information about cell
    func collectionView(
        _ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell: FruitCollectionViewCell =
            collectionView.dequeueReusableCell(
                withReuseIdentifier: "cell", for: indexPath)
            as! FruitCollectionViewCell
        cell.img.image = originalImageName[indexPath.row]
//        cell.label.text = originalTitleText[indexPath.row]
        cell.layer.cornerRadius = 14
        return cell
    }

    var originalTitleText = [
        "Apple 🍏🍎", "Banana 🍌", "Orange 🍊", "Mango 🥭", "Pineapple 🍍",
        "Grapes 🍇",
        "Watermelon 🍉", "Strawberry 🍓", "Peach 🍑", "Cherry 🍒",
        "Apple 🍏🍎", "Banana 🍌", "Orange 🍊", "Mango 🥭", "Pineapple 🍍",
        "Grapes 🍇",
        "Watermelon 🍉", "Strawberry 🍓", "Peach 🍑", "Cherry 🍒",
    ]

    var originalDetailText = [
        """
        Apple 🍏🍎
        -----------------------------------
        Vitamins: A, C, E, B1, B2, B6  
        Minerals: Potassium, Magnesium, Phosphorus  
        Sugar %: 10-14%  

        Benefits:  
        - Rich in fiber, helps with digestion.  
        - Supports heart health by reducing cholesterol.  
        - Contains antioxidants that promote brain function.  

        Side Effects:  
        - Overeating may cause digestive discomfort due to high fiber.  
        - Apple seeds contain cyanide compounds (toxic in large amounts).  

        When to Eat:  
        - Best consumed in the morning or as a pre-workout snack.  

        When NOT to Eat:  
        - Avoid at night as it may cause bloating or indigestion.  

        Best Region:  
        - Grown in temperate climates like the USA, China, and India.  

        Best Environment:  
        - Requires cool temperatures, moderate sunlight, and well-drained soil.  
        """,

        """
        Banana 🍌
        -----------------------------------
        Vitamins: A, C, B6, B12  
        Minerals: Potassium, Magnesium, Iron  
        Sugar %: 12-15%  

        Benefits:  
        - Provides instant energy due to natural sugars.  
        - Helps in muscle recovery and reduces cramps.  
        - Good for digestion and gut health.  

        Side Effects:  
        - Overconsumption may cause bloating or constipation.  
        - High in sugar, so diabetics should eat in moderation.  

        When to Eat:  
        - Best eaten in the morning or before/after workouts.  

        When NOT to Eat:  
        - Avoid at night as it may lead to mucus buildup.  

        Best Region:  
        - Tropical and subtropical regions like India, Brazil, and the Philippines.  

        Best Environment:  
        - Requires warm temperatures, high humidity, and well-watered soil.  
        """,

        """
        Orange 🍊
        -----------------------------------
        Vitamins: C, A, B1, B9  
        Minerals: Potassium, Calcium, Phosphorus  
        Sugar %: 8-12%  

        Benefits:  
        - Strengthens the immune system with high vitamin C.  
        - Hydrates the body and keeps skin healthy.  
        - Helps lower blood pressure and supports heart health.  

        Side Effects:  
        - Too much citrus may cause acid reflux or stomach irritation.  
        - High sugar content can be risky for diabetics.  

        When to Eat:  
        - Best consumed in the morning or before lunch for maximum absorption.  

        When NOT to Eat:  
        - Avoid on an empty stomach as the acidity can cause discomfort.  

        Best Region:  
        - Grown in warm climates like the USA (Florida, California), Brazil, and Spain.  

        Best Environment:  
        - Requires warm temperatures, plenty of sunlight, and well-drained soil.  
        """,

        """
        Mango 🥭
        -----------------------------------
        Vitamins: A, C, E, K, B6  
        Minerals: Iron, Potassium, Magnesium  
        Sugar %: 14-18%  

        Benefits:  
        - Boosts immunity and improves skin health.  
        - Helps in digestion and prevents constipation.  
        - Rich in antioxidants, reduces inflammation.  

        Side Effects:  
        - Overeating may lead to weight gain due to high sugar.  
        - Can cause heat in the body and acne outbreaks.  

        When to Eat:  
        - Best eaten in the summer season, in the afternoon.  

        When NOT to Eat:  
        - Avoid eating at night as it may cause acidity.  

        Best Region:  
        - Tropical regions like India, Thailand, Mexico, and the Philippines.  

        Best Environment:  
        - Requires hot temperatures, high humidity, and deep, well-drained soil.  
        """,

        """
        Pineapple 🍍
        -----------------------------------
        Vitamins: C, B6, A  
        Minerals: Manganese, Calcium, Potassium  
        Sugar %: 10-13%  

        Benefits:  
        - Aids digestion due to bromelain enzyme.  
        - Reduces inflammation and speeds up recovery.  
        - Strengthens bones and improves heart health.  

        Side Effects:  
        - Can cause mouth irritation due to bromelain.  
        - May lead to acidity or diarrhea if overeaten.  

        When to Eat:  
        - Best eaten in the morning or after meals.  

        When NOT to Eat:  
        - Avoid at night as it may increase acidity.  

        Best Region:  
        - Grown in tropical regions like the Philippines, Thailand, and Hawaii.  

        Best Environment:  
        - Requires warm temperatures, well-drained soil, and moderate rainfall.  
        """,

        """
        Grapes 🍇
        -----------------------------------
        Vitamins: C, K, B6  
        Minerals: Copper, Potassium, Magnesium  
        Sugar %: 16-18%  

        Benefits:  
        - Supports heart health and reduces cholesterol.  
        - Boosts brain function and helps in memory retention.  
        - Contains powerful antioxidants that slow aging.  

        Side Effects:  
        - High sugar content can be a concern for diabetics.  
        - Overconsumption may cause bloating or stomach upset.  

        When to Eat:  
        - Best eaten in the morning or as an evening snack.  

        When NOT to Eat:  
        - Avoid at night as it may increase insulin levels.  

        Best Region:  
        - Found in Mediterranean regions like Italy, Spain, and California (USA).  

        Best Environment:  
        - Requires warm summers, cool winters, and well-drained soil.  
        """,

        """
        Watermelon 🍉
        -----------------------------------
        Vitamins: A, C, B6  
        Minerals: Potassium, Magnesium  
        Sugar %: 6-9%  

        Benefits:  
        - Keeps the body hydrated with its high water content.  
        - Helps reduce muscle soreness and supports heart health.  
        - Refreshing and low in calories, perfect for weight loss.  

        Side Effects:  
        - Eating too much may cause bloating or frequent urination.  
        - High water content may dilute stomach acid if eaten after meals.  

        When to Eat:  
        - Best consumed in summer, during the afternoon.  

        When NOT to Eat:  
        - Avoid eating at night as it may cause digestion issues.  

        Best Region:  
        - Grown in warm regions like India, China, and the USA.  

        Best Environment:  
        - Requires hot temperatures, sandy soil, and plenty of sunlight.  
        """,
        """
        Strawberry 🍓
        -----------------------------------
        Vitamins: C, K, B9  
        Minerals: Manganese, Potassium, Magnesium  
        Sugar %: 4-7%  

        Benefits:  
        - Boosts immunity and promotes healthy skin.  
        - Rich in antioxidants, helps reduce inflammation.  
        - Supports heart health by lowering bad cholesterol.  
        - Aids digestion and improves gut health.  

        Side Effects:  
        - Can cause allergic reactions in some individuals.  
        - Overconsumption may lead to acidity or stomach discomfort.  

        When to Eat:  
        - Best consumed in the morning or as a light snack.  

        When NOT to Eat:  
        - Avoid eating in excess if you have acid reflux or kidney issues.  

        Best Region:  
        - Grown in temperate regions like the USA (California), Spain, and Japan.  

        Best Environment:  
        - Requires a cool climate, well-drained soil, and full sunlight.  
        """,

        """
        Peach 🍑
        -----------------------------------
        Vitamins: A, C, E, K  
        Minerals: Potassium, Magnesium, Phosphorus  
        Sugar %: 8-12%  

        Benefits:  
        - Improves digestion and helps prevent constipation.  
        - Supports skin health and slows aging with antioxidants.  
        - Helps in weight management as it is low in calories.  
        - Strengthens the immune system and reduces inflammation.  

        Side Effects:  
        - The pit contains cyanide compounds, which are toxic.  
        - Overeating may cause bloating or gas.  

        When to Eat:  
        - Best eaten fresh in the morning or as an afternoon snack.  

        When NOT to Eat:  
        - Avoid eating before bedtime as it may lead to indigestion.  

        Best Region:  
        - Grown in warm climates like the USA (Georgia), China, and Italy.  

        Best Environment:  
        - Requires moderate temperatures, full sunlight, and well-drained soil.  
        """,

        """
        Cherry 🍒
        -----------------------------------
        Vitamins: C, A, K, B6  
        Minerals: Potassium, Magnesium, Calcium  
        Sugar %: 12-18%  

        Benefits:  
        - Helps reduce muscle soreness and improves sleep quality.  
        - Supports heart health by regulating blood pressure.  
        - High in antioxidants, fights free radicals and aging.  
        - Aids in reducing inflammation and joint pain.  

        Side Effects:  
        - Overconsumption may cause stomach discomfort or diarrhea.  
        - Contains natural sugar, so diabetics should eat in moderation.  

        When to Eat:  
        - Best eaten as a midday snack or post-workout recovery food.  

        When NOT to Eat:  
        - Avoid before bed if you have digestion issues.  

        Best Region:  
        - Grown in temperate regions like Turkey, the USA (Washington), and Canada.  

        Best Environment:  
        - Requires cold winters, well-drained soil, and full sun exposure.  
        """,
        """
        Apple 🍏🍎
        -----------------------------------
        Vitamins: A, C, E, B1, B2, B6  
        Minerals: Potassium, Magnesium, Phosphorus  
        Sugar %: 10-14%  

        Benefits:  
        - Rich in fiber, helps with digestion.  
        - Supports heart health by reducing cholesterol.  
        - Contains antioxidants that promote brain function.  

        Side Effects:  
        - Overeating may cause digestive discomfort due to high fiber.  
        - Apple seeds contain cyanide compounds (toxic in large amounts).  

        When to Eat:  
        - Best consumed in the morning or as a pre-workout snack.  

        When NOT to Eat:  
        - Avoid at night as it may cause bloating or indigestion.  

        Best Region:  
        - Grown in temperate climates like the USA, China, and India.  

        Best Environment:  
        - Requires cool temperatures, moderate sunlight, and well-drained soil.  
        """,

        """
        Banana 🍌
        -----------------------------------
        Vitamins: A, C, B6, B12  
        Minerals: Potassium, Magnesium, Iron  
        Sugar %: 12-15%  

        Benefits:  
        - Provides instant energy due to natural sugars.  
        - Helps in muscle recovery and reduces cramps.  
        - Good for digestion and gut health.  

        Side Effects:  
        - Overconsumption may cause bloating or constipation.  
        - High in sugar, so diabetics should eat in moderation.  

        When to Eat:  
        - Best eaten in the morning or before/after workouts.  

        When NOT to Eat:  
        - Avoid at night as it may lead to mucus buildup.  

        Best Region:  
        - Tropical and subtropical regions like India, Brazil, and the Philippines.  

        Best Environment:  
        - Requires warm temperatures, high humidity, and well-watered soil.  
        """,

        """
        Orange 🍊
        -----------------------------------
        Vitamins: C, A, B1, B9  
        Minerals: Potassium, Calcium, Phosphorus  
        Sugar %: 8-12%  

        Benefits:  
        - Strengthens the immune system with high vitamin C.  
        - Hydrates the body and keeps skin healthy.  
        - Helps lower blood pressure and supports heart health.  

        Side Effects:  
        - Too much citrus may cause acid reflux or stomach irritation.  
        - High sugar content can be risky for diabetics.  

        When to Eat:  
        - Best consumed in the morning or before lunch for maximum absorption.  

        When NOT to Eat:  
        - Avoid on an empty stomach as the acidity can cause discomfort.  

        Best Region:  
        - Grown in warm climates like the USA (Florida, California), Brazil, and Spain.  

        Best Environment:  
        - Requires warm temperatures, plenty of sunlight, and well-drained soil.  
        """,

        """
        Mango 🥭
        -----------------------------------
        Vitamins: A, C, E, K, B6  
        Minerals: Iron, Potassium, Magnesium  
        Sugar %: 14-18%  

        Benefits:  
        - Boosts immunity and improves skin health.  
        - Helps in digestion and prevents constipation.  
        - Rich in antioxidants, reduces inflammation.  

        Side Effects:  
        - Overeating may lead to weight gain due to high sugar.  
        - Can cause heat in the body and acne outbreaks.  

        When to Eat:  
        - Best eaten in the summer season, in the afternoon.  

        When NOT to Eat:  
        - Avoid eating at night as it may cause acidity.  

        Best Region:  
        - Tropical regions like India, Thailand, Mexico, and the Philippines.  

        Best Environment:  
        - Requires hot temperatures, high humidity, and deep, well-drained soil.  
        """,

        """
        Pineapple 🍍
        -----------------------------------
        Vitamins: C, B6, A  
        Minerals: Manganese, Calcium, Potassium  
        Sugar %: 10-13%  

        Benefits:  
        - Aids digestion due to bromelain enzyme.  
        - Reduces inflammation and speeds up recovery.  
        - Strengthens bones and improves heart health.  

        Side Effects:  
        - Can cause mouth irritation due to bromelain.  
        - May lead to acidity or diarrhea if overeaten.  

        When to Eat:  
        - Best eaten in the morning or after meals.  

        When NOT to Eat:  
        - Avoid at night as it may increase acidity.  

        Best Region:  
        - Grown in tropical regions like the Philippines, Thailand, and Hawaii.  

        Best Environment:  
        - Requires warm temperatures, well-drained soil, and moderate rainfall.  
        """,

        """
        Grapes 🍇
        -----------------------------------
        Vitamins: C, K, B6  
        Minerals: Copper, Potassium, Magnesium  
        Sugar %: 16-18%  

        Benefits:  
        - Supports heart health and reduces cholesterol.  
        - Boosts brain function and helps in memory retention.  
        - Contains powerful antioxidants that slow aging.  

        Side Effects:  
        - High sugar content can be a concern for diabetics.  
        - Overconsumption may cause bloating or stomach upset.  

        When to Eat:  
        - Best eaten in the morning or as an evening snack.  

        When NOT to Eat:  
        - Avoid at night as it may increase insulin levels.  

        Best Region:  
        - Found in Mediterranean regions like Italy, Spain, and California (USA).  

        Best Environment:  
        - Requires warm summers, cool winters, and well-drained soil.  
        """,

        """
        Watermelon 🍉
        -----------------------------------
        Vitamins: A, C, B6  
        Minerals: Potassium, Magnesium  
        Sugar %: 6-9%  

        Benefits:  
        - Keeps the body hydrated with its high water content.  
        - Helps reduce muscle soreness and supports heart health.  
        - Refreshing and low in calories, perfect for weight loss.  

        Side Effects:  
        - Eating too much may cause bloating or frequent urination.  
        - High water content may dilute stomach acid if eaten after meals.  

        When to Eat:  
        - Best consumed in summer, during the afternoon.  

        When NOT to Eat:  
        - Avoid eating at night as it may cause digestion issues.  

        Best Region:  
        - Grown in warm regions like India, China, and the USA.  

        Best Environment:  
        - Requires hot temperatures, sandy soil, and plenty of sunlight.  
        """,
        """
        Strawberry 🍓
        -----------------------------------
        Vitamins: C, K, B9  
        Minerals: Manganese, Potassium, Magnesium  
        Sugar %: 4-7%  

        Benefits:  
        - Boosts immunity and promotes healthy skin.  
        - Rich in antioxidants, helps reduce inflammation.  
        - Supports heart health by lowering bad cholesterol.  
        - Aids digestion and improves gut health.  

        Side Effects:  
        - Can cause allergic reactions in some individuals.  
        - Overconsumption may lead to acidity or stomach discomfort.  

        When to Eat:  
        - Best consumed in the morning or as a light snack.  

        When NOT to Eat:  
        - Avoid eating in excess if you have acid reflux or kidney issues.  

        Best Region:  
        - Grown in temperate regions like the USA (California), Spain, and Japan.  

        Best Environment:  
        - Requires a cool climate, well-drained soil, and full sunlight.  
        """,

        """
        Peach 🍑
        -----------------------------------
        Vitamins: A, C, E, K  
        Minerals: Potassium, Magnesium, Phosphorus  
        Sugar %: 8-12%  

        Benefits:  
        - Improves digestion and helps prevent constipation.  
        - Supports skin health and slows aging with antioxidants.  
        - Helps in weight management as it is low in calories.  
        - Strengthens the immune system and reduces inflammation.  

        Side Effects:  
        - The pit contains cyanide compounds, which are toxic.  
        - Overeating may cause bloating or gas.  

        When to Eat:  
        - Best eaten fresh in the morning or as an afternoon snack.  

        When NOT to Eat:  
        - Avoid eating before bedtime as it may lead to indigestion.  

        Best Region:  
        - Grown in warm climates like the USA (Georgia), China, and Italy.  

        Best Environment:  
        - Requires moderate temperatures, full sunlight, and well-drained soil.  
        """,

        """
        Cherry 🍒
        -----------------------------------
        Vitamins: C, A, K, B6  
        Minerals: Potassium, Magnesium, Calcium  
        Sugar %: 12-18%  

        Benefits:  
        - Helps reduce muscle soreness and improves sleep quality.  
        - Supports heart health by regulating blood pressure.  
        - High in antioxidants, fights free radicals and aging.  
        - Aids in reducing inflammation and joint pain.  

        Side Effects:  
        - Overconsumption may cause stomach discomfort or diarrhea.  
        - Contains natural sugar, so diabetics should eat in moderation.  

        When to Eat:  
        - Best eaten as a midday snack or post-workout recovery food.  

        When NOT to Eat:  
        - Avoid before bed if you have digestion issues.  

        Best Region:  
        - Grown in temperate regions like Turkey, the USA (Washington), and Canada.  

        Best Environment:  
        - Requires cold winters, well-drained soil, and full sun exposure.  
        """,
    ]

    var originalImageName = [
        UIImage(named: "Apple"),
        UIImage(named: "Banana"),
        UIImage(named: "Orange"),
        UIImage(named: "Mango"),
        UIImage(named: "Pineapple"),
        UIImage(named: "Grapes"),
        UIImage(named: "Watermelon"),
        UIImage(named: "Strawberry"),
        UIImage(named: "Peach"),
        UIImage(named: "Cherry"),
        UIImage(named: "Apple"),
        UIImage(named: "Banana"),
        UIImage(named: "Orange"),
        UIImage(named: "Mango"),
        UIImage(named: "Pineapple"),
        UIImage(named: "Grapes"),
        UIImage(named: "Watermelon"),
        UIImage(named: "Strawberry"),
        UIImage(named: "Peach"),
        UIImage(named: "Cherry"),
    ]

    @IBOutlet weak var collectionCell: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionCell.delegate = self
        collectionCell.dataSource = self
    }

    func collectionView(
        _ collectionView: UICollectionView,
        willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath
    ) {
        cell.alpha = 0

        // Create a 3D rotation transform
        var transform = CATransform3DIdentity
        transform = CATransform3DTranslate(transform, -250, 20, 0)  // Move slightly

        cell.contentView.layer.transform = transform

        UIView.animate(
            withDuration: 1.0,
            delay: 0.01 * Double(indexPath.row),
            usingSpringWithDamping: 0.9,
            initialSpringVelocity: 0.7,
            options: .curveEaseIn,
            animations: {
                cell.alpha = 1.0
                cell.contentView.layer.transform = CATransform3DIdentity
            }
        )
    }

}

extension FruitViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        let collectionWidth = collectionView.frame.width
        return CGSize(width: collectionWidth / 2 - 5, height: collectionWidth / 2 - 5)
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int
    ) -> CGFloat {
        return 5
    }
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumInteritemSpacingForSectionAt section: Int
    ) -> CGFloat {
        return 5
    }
}
