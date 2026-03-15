//
//  Reviews.swift
//  Scape
//
//  Created by Kristian Martinez on 3/14/26.
//

import UIKit
import Foundation

class Reviews {

    static var reviews: [Reviews] = []
    static var visitedSpots = Set<String>()
    
    var building: String
    var address: String
    var floor: String
    var description: String
    var noise: Double
    var busy: Double
    var comfort: Double
    var aesthetics: Double
    var image: UIImage?
    var scapeScore: Double
    
    init(building: String, address: String, floor: String, description: String, noise: Double, busy: Double, comfort: Double, aesthetics: Double, image: UIImage, scapeScore: Double) {
        self.building = building
        self.address = address
        self.floor = floor
        self.description = description
        self.noise = noise
        self.busy = busy
        self.comfort = comfort
        self.aesthetics = aesthetics
        self.image = image
        self.scapeScore = scapeScore
    }

}
