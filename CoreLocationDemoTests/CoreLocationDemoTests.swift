//
//  CoreLocationDemoTests.swift
//  CoreLocationDemoTests
//
//  Created by Kristijan Kralj on 22/12/2019.
//  Copyright © 2019 Kristijan Kralj. All rights reserved.
//

import XCTest
import CoreLocation
@testable import CoreLocationDemo

class CoreLocationDemoTests: XCTestCase {
  
  func test_view_model_updates_latitude_and_longitude_properties() {
    let locations: [CLLocation] = [CLLocation(latitude: 12, longitude: 10)]
    
    let viewModel = LocationViewModel()
    
    viewModel.locationManager(CLLocationManager(), didUpdateLocations: locations)
    
    XCTAssertEqual(12, viewModel.userLatitude)
    XCTAssertEqual(10, viewModel.userLongitude)
  }
}
