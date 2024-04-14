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
    let planet: Planet

    @Environment(\.openImmersiveSpace) private var  openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var  dismissImmersiveSpace
    @Environment(PlanetToDisplayHelper.self) private var planetToDisplayHelper

    var body: some View {
        makeBody()
            .onAppear {
                planetToDisplayHelper.selectedPlanetToDisplay(planet: planet)
                Task {
                    await openImmersiveSpace(id: "ImmersiveSpace")
                }
            }
            .onDisappear {
                planetToDisplayHelper.selectedPlanet = nil
                Task {
                    await dismissImmersiveSpace()
                }
            }
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
        }
    }
}

#Preview {
    NavigationStack {
        PlanetDetailView(planet: Planet.sample[0])
    }
}
