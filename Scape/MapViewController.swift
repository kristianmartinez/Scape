//
//  MapViewController.swift
//  Scape
//
//  Created by Kristian Martinez on 3/10/26.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {
    
    let reviews = Reviews.reviews
    let mapView = MKMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.frame = view.bounds
        view.addSubview(mapView)
        
        let coordinate = CLLocationCoordinate2D(latitude: 41.8781, longitude: -87.6298)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        mapView.setRegion(region, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let visitedBuildings = Reviews.visitedSpots
        for building in visitedBuildings {
            let mark = MKPointAnnotation()
            mark.coordinate = buildingCoordinates[building] ?? CLLocationCoordinate2D(latitude: 41.87790, longitude: -87.62719)
            mark.title = building
            mapView.addAnnotation(mark)
        }
    }
}
