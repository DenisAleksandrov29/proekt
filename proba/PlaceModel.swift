//
//  PlaceModel.swift
//  proba
//
//  Created by Денис Александров on 07.06.2021.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
       static let restaurantnames = [
            "Burger Heroes",
            "Rok Pub",
            "Morris Pub",
            "Klassic"
    
        ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantnames {
            places.append(Place(name: place, location: "Санкт-Петербург", type: "Ресторан", image: place))
        }
        
        return places
    }
}
