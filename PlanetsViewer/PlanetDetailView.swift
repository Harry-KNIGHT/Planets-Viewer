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

    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 16) {
                Text(planet.name)
                    .font(.largeTitle)
                Text(planet.description)
                    .multilineTextAlignment(.leading)
                    .font(.title2)
            }
            makeModel3D(named: planet.name)
        }
        .padding(16)
        .navigationTitle("Planets Viewer")
    }
    
    func makeModel3D(named: String) -> some View {
        Model3D(named: named, bundle: realityKitContentBundle) { model in
            model
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
    }
}

#Preview {
    NavigationStack {
        PlanetDetailView(planet: Planet.sample[0])
    }
}
