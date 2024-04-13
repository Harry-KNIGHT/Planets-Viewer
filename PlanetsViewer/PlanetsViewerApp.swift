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

    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            PlanetImmersiveView()
        }
        .immersionStyle(selection: $style, in: .mixed)
    }
}
