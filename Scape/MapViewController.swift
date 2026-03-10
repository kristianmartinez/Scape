//
//  MapViewController.swift
//  Scape
//
//  Created by Kristian Martinez on 3/10/26.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mapView = MKMapView(frame: view.bounds)
        view.addSubview(mapView)
        
        // MARK: pinned locations of study spots on campus (hardcoded)
        let depaulCenter = MKPointAnnotation()
        depaulCenter.coordinate = CLLocationCoordinate2D(latitude: 41.87790, longitude: -87.62719)
        depaulCenter.title = "DePaul Center"
        mapView.addAnnotation(depaulCenter)
    }
}
