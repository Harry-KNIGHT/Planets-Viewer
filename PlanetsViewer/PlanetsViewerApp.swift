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
        WindowGroup("Planet Viewer") {
            ModulesView()
                .environment(planetToDisplayHelper)

        }

      // A volume that displays a globe.
      WindowGroup(for: Planet.self) { $planet in
          if let planet {
            GlobeView(planet: planet)
                .environment(planetToDisplayHelper)
          }
      }
      .windowStyle(.volumetric)
      .defaultSize(width: 0.6, height: 0.6, depth: 1, in: .meters)
    }
}
