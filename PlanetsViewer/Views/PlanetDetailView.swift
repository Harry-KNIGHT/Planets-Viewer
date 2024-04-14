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

    var module: Module
    var body: some View {
        makeBody()
    }

    private func makeBody() -> some View {
        HStack(alignment: .center) {
            makeTitleAndDescription()
            Image(module.name)
                .resizable()
                .scaledToFit()
                .shadow(radius: 10)
        }
        .padding(16)
        .navigationTitle("Planets Viewer")
    }

    private func makeTitleAndDescription() -> some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(module.name)
                .font(.extraLargeTitle)
            Text(module.description)
                .multilineTextAlignment(.leading)
                .font(.title2)

            SolarSystemButton(module: module)
        }
    }
}

#Preview {
    NavigationStack {
        PlanetDetailView(module: Module.sun)
    }
}
