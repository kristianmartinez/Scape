//
//  scapeBuildings.swift
//  Scape
//
//  Created by Kristian Martinez on 3/9/26.
//

import Foundation

let buildings = [
    Building(name: "DePaul Center",
        address: "1 E Jackson Blvd",
        description: "Home of the School of Business. Has 11 floors.",
        imageName: "depaulcenter"),
    
    Building(name: "CDM Center",
             address: "243 S Wabash Ave",
             description: "Home of the School of Computing and Digital Media.",
             imageName: "cdm"),
    
    Building(name: "Lewis Center",
                 address: "25 E Jackson Blvd",
                 description: "Home of the DePaul College of Law.",
                 imageName: "lewiscenter"),
    
    Building(name: "Daley Building",
                 address: "14 E Jackson St",
                 description: "Loop academic building used for classrooms and faculty offices.",
                 imageName: "daley"),
    
    Building(name: "Schmitt Academic Center",
                 address: "2320 N Kenmore Ave",
                 description: "Major academic building with classrooms, labs, and study spaces.",
                 imageName: "sac"),

    Building(name: "John T. Richardson Library",
                 address: "2350 N Kenmore Ave",
                 description: "Main Lincoln Park campus library with study areas and research resources.",
                 imageName: "richardson"),

    Building(name: "Student Center",
                 address: "2250 N Sheffield Ave",
                 description: "Hub for student life with dining, meeting rooms, and organization offices.",
                 imageName: "studentcenter"),

    Building(name: "Ray Meyer Fitness and Recreation Center",
                 address: "2235 N Sheffield Ave",
                 description: "Campus recreation center with gym, fitness classes, and basketball arena.",
                 imageName: "ray"),
    
    Building(name: "Levan Center",
                 address: "2322 N Kenmore Ave",
                 description: "Administrative offices and student services building.",
                 imageName: "levan"),
    
    Building(name: "School of Music",
                 address: "804 W Belden Ave",
                 description: "Home of the School of Music with concert halls and rehearsal spaces.",
                 imageName: "music"),


    ]

class Building {
    
    var name: String
    var address: String
    var description: String
    var imageName: String
    
    init(name: String, address: String, description: String, imageName: String) {
        self.name = name
        self.address = address
        self.description = description
        self.imageName = imageName
    }
}
