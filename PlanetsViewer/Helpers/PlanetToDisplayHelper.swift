//
//  PlanetToDisplayHelper.swift
//  PlanetsViewer
//
//  Created by Elliot Knight on 14/04/2024.
//

import Foundation

@Observable
final class PlanetToDisplayHelper {
    var selectedModule: Module?
    var isShowingSolar = false

    func selectedPlanetToDisplay(module: Module) {
        selectedModule = module
    }
}
