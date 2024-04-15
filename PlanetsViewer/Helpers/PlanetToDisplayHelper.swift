//
//  PlanetToDisplayHelper.swift
//  PlanetsViewer
//
//  Created by Elliot Knight on 14/04/2024.
//

import Foundation

@Observable
final class PlanetToDisplayHelper {
    var selectedPlanet: Planet?
    var isShowingSolar = false

    func selectedPlanetToDisplay(planet: Planet) {
        selectedPlanet = planet
    }
}
