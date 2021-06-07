//
//  MainViewController.swift
//  proba
//
//  Created by Денис Александров on 31.05.2021.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantnames = [
        "Burger Heroes",
        "Rok Pub",
        "Morris Pub",
        "Klassic"
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantnames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.namelabel.text = restaurantnames[indexPath.row]
        cell.ImagePlaces?.image = UIImage(named: restaurantnames[indexPath.row])
        cell.ImagePlaces?.layer.cornerRadius = cell.ImagePlaces.frame.size.height / 2
        cell.ImagePlaces?.clipsToBounds = true

        return cell
    }
    
    // Mark: - Table view delegate
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
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
