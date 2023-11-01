//
//  LocationManager.swift
//  Mapping
//
//  Created by Hayk Sakulyan on 25.10.23.
//

import Foundation
import SwiftUI
import MapKit

@MainActor
class LocationManager {
    static let shared = LocationManager()
    let manager: CLLocationManager
    init() {
        self.manager = CLLocationManager()
        if self.manager.authorizationStatus == .notDetermined {
            self.manager.requestWhenInUseAuthorization()
        }
    }
}
