//
//  PlanetsViewerApp.swift
//  PlanetsViewer
//
//  Created by Harry Knight on 12/04/2024.
//

import SwiftUI

@main
struct PlanetsViewerApp: App {
    @State private var style: ImmersionStyle = .mixed
    @State private var planetToDisplayHelper = PlanetToDisplayHelper()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(planetToDisplayHelper)

        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            if let selectedPlanet = planetToDisplayHelper.selectedPlanet {
                PlanetImmersiveView(planet: selectedPlanet)
            }
        }
        .immersionStyle(selection: $style, in: .mixed)
    }
}
