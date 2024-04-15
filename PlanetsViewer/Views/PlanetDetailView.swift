//
//  PlanetDetailView.swift
//  PlanetsViewer
//
//  Created by Harry Knight on 12/04/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct PlanetDetailView: View {

    @Environment(\.openImmersiveSpace) private var  openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var  dismissImmersiveSpace
    @Environment(PlanetToDisplayHelper.self) private var planetToDisplayHelper

    var planet: Planet
    
    var body: some View {
        makeBody()
    }

    private func makeBody() -> some View {
        HStack(alignment: .center) {
            makeTitleAndDescription()
            Image(planet.name)
                .resizable()
                .scaledToFit()
                .shadow(radius: 10)
        }
        .padding(16)
        .navigationTitle("Planets Viewer")
    }

    private func makeTitleAndDescription() -> some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(planet.name)
                .font(.extraLargeTitle)
            Text(planet.description)
                .multilineTextAlignment(.leading)
                .font(.title2)

            SolarSystemButton(planet: planet)
        }
    }
}

#Preview {
    NavigationStack {
        PlanetDetailView(planet: Planet.sun)
    }
}
