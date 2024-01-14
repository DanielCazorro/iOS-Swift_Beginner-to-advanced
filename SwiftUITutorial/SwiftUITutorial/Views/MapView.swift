//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let coordiante = CLLocationCoordinate2D(latitude: 36.7380638, longitude: -4.3495762)
        
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        
        let region = MKCoordinateRegion(center: coordiante, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

#Preview {
    MapView()
}
