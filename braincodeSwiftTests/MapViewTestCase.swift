//
//  MapViewTestCase.swift
//  braincodeSwift
//
//  Created by Ewa Bielska on 09/03/15.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit

class MapViewTestCase: KIFTestCase {
    var tester : KIFUITestActor {
        get {
            return KIFUITestActor(inFile: __FILE__, atLine: __LINE__, delegate: self)
        }
    }

    override func beforeEach() {

        // Wait and tap localization button
        tester.waitForViewWithAccessibilityLabel("localizationButton")
        tester.tapViewWithAccessibilityLabel("localizationButton")

        // Wait for map view
        tester.waitForViewWithAccessibilityLabel("mapView")
    }

    override func afterEach() {

        // Go back to main view
        tester.tapViewWithAccessibilityLabel("Back")
    }

    func testMapViewAnnotation() {

        // Wait and tap annotation mark
        tester.waitForTimeInterval(3.0)
        tester.waitForViewWithAccessibilityLabel("Pixel, XXIV spotkanie PTAQ")
        tester.tapViewWithAccessibilityLabel("Pixel, XXIV spotkanie PTAQ")
    }

    func testMapViewSwipe() {

        // Wait and tap localization button
        // Wait for map view
        // Swipe map to check proper user interaction
    }
}