//
//  ContentView.swift
//  projet_Test01
//
//  Created by apprenant70 on 17/09/2022.
//

import SwiftUI
import MapKit

struct AnnotatedItem: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

struct ContentView: View {
    
    // tableau rempli d'annotations
    // les annotations st issues de la structure au-dessus
    private var pointsOfInterest = [
        AnnotatedItem(name: "Times Square", coordinate: .init(latitude: 40.75773, longitude: -73.985708)),
        AnnotatedItem(name: "Flatiron Building", coordinate: .init(latitude: 40.741112, longitude: -73.989723)),
        AnnotatedItem(name: "Empire State Building", coordinate: .init(latitude: 40.748817, longitude: -73.985428))
        ]
    
    @State
    private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.75773, longitude: -73.985708), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))

    var body: some View {
        
        // ----------------------------------------------------------
        
        // 1 carte avec possibilite de zoom
        // comment dezoomer ???
        // Map(coordinateRegion: $region)
        
        // 1 carte grd ecran
        /*
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
        */
        
        // carte sans interaction de la part de l'utilisateur
        /*
        Map(coordinateRegion: $region, interactionModes: [])
        */
        
        // carte avec suivi geolocalisation de l'utilisateur
        /*
        Map(coordinateRegion: $region, interactionModes: [], showsUserLocation: true)
        */
        
        // carte avec geolocalisation de l'utilisateur + suivi de ce dernier
        /*
        Map(coordinateRegion: $region, interactionModes: [], showsUserLocation: true, userTrackingMode: .constant(.follow))
         */
        
        // carte avec reperes graphiques issus du tableau
        // les reperes graphiques st des MapMarker
        /*
        Map(coordinateRegion: $region, annotationItems: pointsOfInterest) { item in
            MapMarker(coordinate: item.coordinate, tint: .red)
        }
        .edgesIgnoringSafeArea(.all)
        */
        
        // la meme que ci-dessus ms avec des reperes graphiques differents
        /*
        Map(coordinateRegion: $region, annotationItems: pointsOfInterest) { item in
            MapPin(coordinate: item.coordinate, tint: .blue)
        }
        .edgesIgnoringSafeArea(.all)
        */
        
        // la meme que ci-dessus avec des reperes graphiques personnalisés
        /*
        Map(coordinateRegion: $region, annotationItems: pointsOfInterest) {
            item in
            MapAnnotation(coordinate: item.coordinate) {
                RoundedRectangle(cornerRadius: 5.0)
                    .stroke(Color.purple, lineWidth: 4.0)
                    .frame(width: 30, height: 30)
            }
        }
        .edgesIgnoringSafeArea(.all)
        */
        
        //
        // la meme que ci-dessus avec des reperes graphiques personnalisés
        // (ajout de texte avec les rectangle purple)
        Map(coordinateRegion: $region, annotationItems: pointsOfInterest) {
            item in
            MapAnnotation(coordinate: item.coordinate) {
                RoundedRectangle(cornerRadius: 5.0)
                    .stroke(Color.purple, lineWidth: 4.0)
                    .frame(width: 30, height: 30)
                Text("Hello")
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
