//
//  MapView.swift
//  Landmarks
//
//  Created by Patrick Essiam on 23/07/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D

    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )

//    var body: some View {
//        Map(position: .constant(.region(region)))
//    }
    
    var body: some View {
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.all)
        }

//    @State private var region: MKCoordinateRegion {
//        MKCoordinateRegion(
//            center: coordinate,
//            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//        )
//    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
