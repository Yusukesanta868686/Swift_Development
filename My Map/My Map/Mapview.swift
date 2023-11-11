//
//  Mapview.swift
//  My Map
//
//  Created by 平田佑亮 on 2023/10/01.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    let searchKey: String
    
    func makeUIView(context: Context) -> MKMapView{
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context){
        print("検索ワード: \(searchKey)")
        
        let geocoder = CLGeocoder()
        
        geocoder.geocodeAddressString(
            searchKey,
            completionHandler: {(placemarks, error) in
                if let placemarks,
                   let firstPlacemark = placemarks.first,
                   let location = firstPlacemark.location{
                    let targetCoordinate = location.coordinate
                    
                    print("緯度経度: \(targetCoordinate)")
                    
                    let pin = MKPointAnnotation()
                    
                    pin.coordinate = targetCoordinate
                    
                    pin.title = searchKey
                    
                    uiView.addAnnotation(pin)
                    
                    
                    uiView.region = MKCoordinateRegion(
                        center: targetCoordinate,
                        latitudinalMeters: 500.0,
                        longitudinalMeters: 500.0
                    )
                }
            })
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchKey: "羽田空港")
    }
}
