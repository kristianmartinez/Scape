//
//  DetailedReviewViewController.swift
//  Scape
//
//  Created by Kristian Martinez on 3/14/26.
//

import UIKit

class DetailedReviewViewController: UIViewController {

    @IBOutlet weak var buildingNameLabel: UILabel!
    
    @IBOutlet weak var spotDescLabel: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    var review: Reviews?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let r = review {
            buildingNameLabel.text = r.building
            spotDescLabel.text = r.description
            image.image = r.image
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
