//
//  MapView.swift
//  Africa
//
//  Created by Damien K. Sedgwick on 21/06/2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
        
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            // Old style pin (always static)
            // MapPin(coordinate: item.location, tint: .accentColor)
            
            // New style marker (always static)
            // MapMarker(coordinate: item.location, tint: .accentColor)
            
            // Custom basic annotation
            // MapAnnotation(coordinate: item.location, content: {
            //    Image("logo")
            //        .resizable()
            //        .scaledToFit()
            //        .frame(width: 28, height: 28, alignment: .center)
                
            // })
            
            // Custom complex annotation
            MapAnnotation(coordinate: item.location, content: {
                MapAnnotationView(location: item)
            })
        })
        .overlay(
            HStack(alignment: .center, spacing: 12, content: {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3, content: {
                    HStack{
                        Text("Latitude: ")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    Divider()
                    HStack{
                        Text("Longitude: ")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    
                })
            })
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.8)
            )
            .padding()
            , alignment: .top
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
