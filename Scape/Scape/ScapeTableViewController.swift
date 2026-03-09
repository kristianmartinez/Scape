//
//  ScapeTableViewController.swift
//  Scape
//
//  Created by Kristian Martinez on 3/9/26.
//

import UIKit

class ScapeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return buildings.count
    }
    
    override func tableView(_ tableView: UITableView,
                            accessoryButtonTappedForRowWith indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showDetail", sender: indexPath)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let building = buildings[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "buildingCell", for: indexPath)
        // Configure the cell...
        
        cell.textLabel?.text = building.name
        cell.detailTextLabel?.text = building.campus

        return cell
    }

    override func tableView(_ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath) {
        let title = "DePaul Buildings"
        let message = "You have selected \(buildings[indexPath.row].name)"
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
        self.tableView.deselectRow(at: indexPath, animated: true)
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        guard let detailVC = segue.destination as? DetailViewController else { return }
        guard let indexPath = sender as? IndexPath else { return }
        detailVC.building = buildings[indexPath.row]
    }

}
