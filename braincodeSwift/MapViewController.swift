//
//  MapViewController.swift
//  braincodeSwift
//
//  Created by ewa on 07.03.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    let zoomLocation = CLLocationCoordinate2D(latitude:
        52.3915991, longitude: 16.858133)
    
    override func viewWillAppear(animated: Bool) {
        self.setUpZoomLocation()
        self.setUpAnnotation()
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.accessibilityLabel = "mapView"
    }
    
    func setUpZoomLocation() {
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: zoomLocation, span:span)
        
        self.mapView.setRegion(region, animated: true)
    }
    
    func setUpAnnotation() {
        let annotation = MKPointAnnotation()
        annotation.coordinate = zoomLocation;
        annotation.title = "Pixel"
        annotation.subtitle = "PTAQ XXIV"

        self.mapView.addAnnotation(annotation)
    }
}
