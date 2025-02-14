import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchResultsUpdating {

    @IBOutlet weak var tableView: UITableView!

    var originalTitleText = [
        "Apple", "Banana", "Orange", "Mango", "Pineapple", "Grapes",
        "Watermelon", "Strawberry", "Peach", "Cherry",
        "Apple", "Banana", "Orange", "Mango", "Pineapple", "Grapes",
        "Watermelon", "Strawberry", "Peach", "Cherry",
    ]

    var originalDetailText = [
        "A sweet and crunchy fruit, usually red, green, or yellow in color.",
        "A soft and creamy fruit with a yellow peel, rich in potassium.",
        "A juicy citrus fruit with a tangy and refreshing taste, rich in Vitamin C.",
        "A tropical fruit with a sweet, fibrous texture, ranging from yellow to orange.",
        "A spiky fruit with a tough outer skin and juicy, golden flesh inside.",
        "Small, juicy berries that come in green, red, or purple, often used in wines and juices.",
        "A large, refreshing fruit with a green rind and sweet, red flesh, high in water content.",
        "A small, red, heart-shaped fruit with a juicy, sweet-tart flavor, often used in desserts.",
        "A soft, fuzzy-skinned fruit with a juicy, sweet interior, typically orange or yellow.",
        "A tiny, round fruit that comes in bright red or deep maroon, known for its tart-sweet flavor.",
        "A sweet and crunchy fruit, usually red, green, or yellow in color.",
        "A soft and creamy fruit with a yellow peel, rich in potassium.",
        "A juicy citrus fruit with a tangy and refreshing taste, rich in Vitamin C.",
        "A tropical fruit with a sweet, fibrous texture, ranging from yellow to orange.",
        "A spiky fruit with a tough outer skin and juicy, golden flesh inside.",
        "Small, juicy berries that come in green, red, or purple, often used in wines and juices.",
        "A large, refreshing fruit with a green rind and sweet, red flesh, high in water content.",
        "A small, red, heart-shaped fruit with a juicy, sweet-tart flavor, often used in desserts.",
        "A soft, fuzzy-skinned fruit with a juicy, sweet interior, typically orange or yellow.",
        "A tiny, round fruit that comes in bright red or deep maroon, known for its tart-sweet flavor.",
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

    var titleText: [String] = []
    var detailText: [String] = []
    var imageName: [UIImage?] = []
    
    var filteredTitleText: [String] = []
    var filteredDetailText: [String] = []
    var filteredImageName: [UIImage?] = []
    
    var isSearching = false
    let searchController = UISearchController(searchResultsController: nil)
    let refreshControl = UIRefreshControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set initial data
        resetData()
        
        // Setup Search Controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Fruits..."
        
        // Customize search bar appearance
        let searchBar = searchController.searchBar
        searchBar.searchBarStyle = .prominent // Removes default background
        searchBar.tintColor = UIColor(red: 255/255, green: 128/255, blue: 255/255, alpha: 1.0) // Text color
        
        // Customize the search text field
        if let searchTextField = searchBar.value(forKey: "searchField") as? UITextField {
            searchTextField.backgroundColor = UIColor(red: 255/255, green: 128/255, blue: 255/255, alpha: 0.5) // Background color
            searchTextField.textColor = UIColor(red: 255/255, green: 128/255, blue: 255/255, alpha: 1.0) // Text color
            searchTextField.layer.cornerRadius = 5
            searchTextField.clipsToBounds = false
            
            // Customize the placeholder text color
            let placeholderAttributes: [NSAttributedString.Key: Any] = [
                .foregroundColor: UIColor(red: 255/255, green: 128/255, blue: 255/255, alpha: 0.7) // Lighter pink
            ]
            searchTextField.attributedPlaceholder = NSAttributedString(
                string: "Search Fruits...",
                attributes: placeholderAttributes
            )
        }

        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        // Setup Refresh Control
        refreshControl.tintColor = UIColor(red: 255/255, green: 128/255, blue: 255/255, alpha: 1.0)
        refreshControl.addTarget(self, action: #selector(refreshTable), for: .valueChanged)
        tableView.refreshControl = refreshControl
    }

    // Function to reset data to original
    func resetData() {
        titleText = originalTitleText
        detailText = originalDetailText
        imageName = originalImageName
        tableView.reloadData()
    }

    // Refresh function triggered when user pulls down
    @objc func refreshTable() {
        resetData()
        refreshControl.endRefreshing()  // Stop the spinner
    }

    // MARK: - Table View Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isSearching ? filteredTitleText.count : titleText.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell

        let currentTitles = isSearching ? filteredTitleText : titleText
        let currentDetails = isSearching ? filteredDetailText : detailText
        let currentImages = isSearching ? filteredImageName : imageName

        cell.lb1.text = currentTitles[indexPath.row]
        cell.lb2.text = currentDetails[indexPath.row]
        cell.img.image = currentImages[indexPath.row]

        return cell
    }

    // MARK: - Search Functionality
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchController.searchBar.text, !searchText.isEmpty {
            isSearching = true
            filteredTitleText = titleText.filter { $0.lowercased().contains(searchText.lowercased()) }
            filteredDetailText = []
            filteredImageName = []
            // change array
            for title in filteredTitleText {
                if let index = titleText.firstIndex(of: title) {
                    filteredDetailText.append(detailText[index])
                    filteredImageName.append(imageName[index])
                }
            }
        } else {
            isSearching = false
        }
        tableView.reloadData()
    }
    
    func tableView(
         _ tableView: UITableView, didSelectRowAt indexPath: IndexPath
     ) {
         let fruitDetails =
             self.storyboard?.instantiateViewController(
                 withIdentifier: "FruitDetailsViewController")
             as! FruitDetailsViewController
         fruitDetails.strlable1 = titleText[indexPath.row]
         fruitDetails.strimage = imageName[indexPath.row]
         fruitDetails.strlable2 = detailText[indexPath.row]
         self.navigationController?.pushViewController(
             fruitDetails, animated: true)
     }

    // MARK: - Table View Swipe to Delete
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (_, _, completionHandler) in
            if self.isSearching {
                let deletedItem = self.filteredTitleText[indexPath.row]
                
                if let originalIndex = self.titleText.firstIndex(of: deletedItem) {
                    self.titleText.remove(at: originalIndex)
                    self.detailText.remove(at: originalIndex)
                    self.imageName.remove(at: originalIndex)
                }
                
                self.filteredTitleText.remove(at: indexPath.row)
                self.filteredDetailText.remove(at: indexPath.row)
                self.filteredImageName.remove(at: indexPath.row)
            } else {
                self.titleText.remove(at: indexPath.row)
                self.detailText.remove(at: indexPath.row)
                self.imageName.remove(at: indexPath.row)
            }

            tableView.deleteRows(at: [indexPath], with: .fade)
            completionHandler(true)
        }
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
}
