//
//  MapViewController.swift
//  Scape
//
//  Created by Kristian Martinez on 3/10/26.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    let reviews = Reviews.reviews
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mapView = MKMapView(frame: view.bounds)
        view.addSubview(mapView)
        
        // MARK: Pinned location of the DePaul Center (hardcoded)
//        let depaulCenter = MKPointAnnotation()
//        depaulCenter.coordinate = CLLocationCoordinate2D(latitude: 41.87790, longitude: -87.62719)
//        depaulCenter.title = "DePaul Center"
//        mapView.addAnnotation(depaulCenter)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.reloadInputViews()
    }
    
    
}
