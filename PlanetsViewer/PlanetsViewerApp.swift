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

        // A volume that displays a globe.
        WindowGroup(id: "SunGlobe") {
                SunView()
                    .environment(planetToDisplayHelper)

        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)

//        ImmersiveSpace(id: "ImmersiveSpace") {
//            if let selectedPlanet = planetToDisplayHelper.selectedPlanet {
//                PlanetImmersiveView(planet: selectedPlanet)
//            }
//        }
//        .immersionStyle(selection: $style, in: .mixed)
    }
}
