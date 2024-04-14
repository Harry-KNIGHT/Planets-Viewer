//
//  ImmersiveView.swift
//  PlanetsViewer
//
//  Created by Harry Knight on 12/04/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct PlanetImmersiveView: View {
    let planet: Planet
    var body: some View {
        RealityView { content in
            if let scene = try? await Entity(named: planet.name, in: realityKitContentBundle) {
                scene.position = [-1.2, 1.2, -1.75]
                scene.scale = [3, 3, 3]
                content.add(scene)
            }
        }
    }
}

#Preview(immersionStyle: .mixed) {
    PlanetImmersiveView(planet: Planet.sample[1])
}
