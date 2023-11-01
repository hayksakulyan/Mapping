//
//  ContentView.swift
//  Mapping
//
//  Created by Hayk Sakulyan on 18.10.23.
//

import SwiftUI
import MapKit



struct ContentView: View {
    private var locationManager = LocationManager.shared
    @State private var selectedMapOption: MapOptions = .standard
    
    var body: some View {

        ZStack(alignment: .top) {
            Map {
                Annotation("Coffee", coordinate: .coffee) {
                    Image(systemName: "cup.and.saucer.fill")
                        .foregroundColor(.pink)
                }
                Annotation("Coffee", coordinate: .restourant) {
                    Image(systemName: "fork.knife.circle")
                        .padding(4)
                        .foregroundStyle(.red)
                        .background(.green)
                        .cornerRadius(4.0)
                }
                // useri Locationi hamar pahanjuma unenal
                UserAnnotation()
    //            Marker("Coffee", coordinate: .coffee)
    //            Marker("Restourant", coordinate: .restourant)
            }.mapStyle(selectedMapOption.mapStyle)
            
            Picker("Map Style", selection: $selectedMapOption) {
                ForEach(MapOptions.allCases) { mapOption in
                    Text(mapOption.rawValue.capitalized).tag(mapOption)
                        .foregroundStyle(Color.red)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
//            .background(.white)
            
        }
    }
}

#Preview {
    ContentView()
}
