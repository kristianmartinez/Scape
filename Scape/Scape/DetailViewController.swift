//
//  DetailViewController.swift
//  Scape
//
//  Created by Kristian Martinez on 3/9/26.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var buildingNameLabel: UILabel!
    
    @IBOutlet weak var buildingDescLabel: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    var building: Building?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let b = building {
            buildingNameLabel.text = b.name
            buildingDescLabel.text = b.description + "\n" + "Address: " + b.address
            image.image = UIImage(named: b.imageName)
        }
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
