//
//  ViewController.swift
//  Scape
//
//  Created by Kristian Martinez on 3/8/26.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: This ViewController was used for debugging and logging purposes :) 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func showResultsTapped(_ sender: UIButton) {
        let reviews = Reviews.reviews
        var i: Int = 1
        
        for review in reviews {
            print(
                String(i) + ": \n" +
                "Building: " + review.building + " \n" +
                "Floor: " + review.floor + " \n" +
                "Desc: " + review.description + " \n" +
                "Noise: " + String(review.noise) + " \n" +
                "Busy: " + String(review.busy) + " \n" +
                "Comfort: " + String(review.comfort) + " \n" +
                "Aesthetics: " + String(review.aesthetics) + " \n" +
                "SCORE: " + String(review.scapeScore) + " \n")
            i+=1
        }
    }
    
}



//let reviews = Reviews.reviews
//
//for review in reviews {
//    print(
//        "Building-" + review.building + " " +
//        "Floor-" + review.floor + " " +
//        "Desc-" + review.description + " " +
//        "Noise-" + String(review.noise) + " " +
//        "Busy-" + String(review.busy) + " " +
//        "Comfort-" + String(review.comfort) + " " +
//        "Aesthetics-" + String(review.aesthetics))
//}
