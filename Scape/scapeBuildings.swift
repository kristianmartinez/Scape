//
//  scapeBuildings.swift
//  Scape
//
//  Created by Kristian Martinez on 3/9/26.
//

import Foundation

let buildings = [
    // MARK: Loop Campus
    Building(name: "DePaul Center",
        address: "1 E Jackson Blvd, Chicago, IL 60604",
        campus: "Loop Campus",
        description: "Home of the School of Business. Has 11 floors.",
        imageName: "depaulcenter"),
    
    Building(name: "CDM Center",
             address: "243 S Wabash Ave, Chicago, IL 60604",
             campus: "Loop Campus",
             description: "Home of the School of Computing and Digital Media.",
             imageName: "cdm"),
    
    Building(name: "Lewis Center",
             address: "25 E Jackson Blvd, Chicago, IL 60604",
             campus: "Loop Campus",
             description: "Home of the DePaul College of Law.",
             imageName: "lewiscenter"),
    
    Building(name: "Daley Building",
             address: "14 E Jackson Blvd, Chicago, IL 60604",
             campus: "Loop Campus",
             description: "Loop academic building used for classrooms and faculty offices.",
             imageName: "daley"),
    
    // MARK: Lincoln Park Campus
    Building(name: "Schmitt Academic Center",
             address: "2320 N Kenmore Ave, Chicago, IL 60614",
             campus: "Lincoln Park Campus",
             description: "Major academic building with classrooms, labs, and study spaces.",
             imageName: "sac"),

    Building(name: "John T. Richardson Library",
             address: "2350 N Kenmore Ave, Chicago, IL 60614",
             campus: "Lincoln Park Campus",
             description: "Main Lincoln Park campus library with study areas and research resources.",
             imageName: "richardson"),

    Building(name: "Student Center",
             address: "2250 N Sheffield Ave, Chicago, IL 60614",
             campus: "Lincoln Park Campus",
             description: "Hub for student life with dining, meeting rooms, and organization offices.",
             imageName: "studentcenter"),

    Building(name: "Ray Meyer Fitness and Recreation Center",
             address: "2235 N Sheffield Ave, Chicago, IL 60614",
             campus: "Lincoln Park Campus",
             description: "Campus recreation center with gym, fitness classes, and basketball arena.",
             imageName: "ray"),
    
    Building(name: "Levan Center",
             address: "2322 N Kenmore Ave, Chicago, IL 60614",
             campus: "Lincoln Park Campus",
             description: "Administrative offices and student services building.",
             imageName: "levan"),
    
    Building(name: "School of Music",
             address: "804 W Belden Ave, Chicago, IL 60614",
             campus: "Lincoln Park Campus",
             description: "Home of the School of Music with concert halls and rehearsal spaces.",
             imageName: "music"),
    
    Building(name: "Arts & Letters Hall",
         address: "2315 N Kenmore Ave, Chicago, IL 60614",
         campus: "Lincoln Park Campus",
         description: "Home to many humanities departments including history, philosophy, and language studies. Contains classrooms, faculty offices, and student study spaces.",
         imageName: "artsandletters"),
    
    Building(name: "The Theatre School",
         address: "2350 N Racine Ave, Chicago, IL 60614",
         campus: "Lincoln Park Campus",
         description: "Home of DePaul’s nationally recognized Theatre School. The building contains performance spaces, rehearsal rooms, classrooms, and production studios for students studying acting, directing, design, and theatre technology.",
         imageName: "theatre"),
    ]

// MARK: dictionary to map building names -> address (for MapViewController)
let addresses = Dictionary(uniqueKeysWithValues: buildings.map { ($0.name, $0.address) })

class Building {
    
    var name: String
    var address: String
    var campus: String
    var description: String
    var imageName: String
    
    init(name: String, address: String, campus: String, description: String, imageName: String) {
        self.name = name
        self.address = address
        self.campus = campus
        self.description = description
        self.imageName = imageName
    }
}
