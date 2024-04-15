//
//  ModulesView.swift
//  PlanetsViewer
//
//  Created by Harry Knight on 12/04/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ModulesView: View {
    var body: some View {
        NavigationStack {
            List(Planet.allCases) { planet in
                NavigationLink(destination: PlanetDetailView(planet: planet)) {
                    HStack(alignment: .center, spacing: 10) {
                        makeModel3D(planet: planet)
                        makeTitleAndDescription(planet: planet)
                    }
                    .padding()
                }
            }
            .navigationTitle("Planets Viewer")
        }
    }

    func makeTitleAndDescription(planet: Planet) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(planet.name)
                .font(.title)
            Text(planet.description)
                .lineLimit(2)
                .font(.title3)
        }
    }

    func makeModel3D(planet: Planet) -> some View {
        Model3D(named: planet.name, bundle: realityKitContentBundle) { model in
            model
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
        } placeholder: {
            ProgressView()
        }
    }
}

#Preview(windowStyle: .automatic) {
    ModulesView()
}
