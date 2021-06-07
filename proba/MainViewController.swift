//
//  MainViewController.swift
//  proba
//
//  Created by Денис Александров on 31.05.2021.
//

import UIKit

class MainViewController: UITableViewController {
    
    
    let places = Place.getPlaces()

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.namelabel.text = places[indexPath.row].name
        cell.lacationlabel.text = places[indexPath.row].location
        cell.typelabel.text = places[indexPath.row].type
        cell.ImagePlaces?.image = UIImage(named: places[indexPath.row].image)
        
        cell.ImagePlaces?.layer.cornerRadius = cell.ImagePlaces.frame.size.height / 2
        cell.ImagePlaces?.clipsToBounds = true

        return cell
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
