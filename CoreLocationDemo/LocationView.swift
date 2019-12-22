//
//  ContentView.swift
//  CoreLocationDemo
//
//  Created by Kristijan Kralj on 22/12/2019.
//  Copyright © 2019 Kristijan Kralj. All rights reserved.
//

import SwiftUI

struct LocationView: View {
  
  @ObservedObject var locationViewModel = LocationViewModel()
  
  var body: some View {
    VStack {
      Text("Your location is:")
      HStack {
        Text("Latitude: \(locationViewModel.userLatitude)")
        Text("Longitude: \(locationViewModel.userLongitude)")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    LocationView()
  }
}
