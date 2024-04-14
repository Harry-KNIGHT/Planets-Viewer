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
            List(Module.allCases) { module in
                NavigationLink(destination: PlanetDetailView(module: module)) {
                    HStack(alignment: .center, spacing: 10) {
                        makeModel3D(module: module)
                        makeTitleAndDescription(module: module)
                    }
                    .padding()
                }
            }
            .navigationTitle("Planets Viewer")
        }
    }

    func makeTitleAndDescription(module: Module) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(module.name)
                .font(.title)
            Text(module.description)
                .lineLimit(2)
                .font(.title3)
        }
    }

    func makeModel3D(module: Module) -> some View {
        Model3D(named: module.name, bundle: realityKitContentBundle) { model in
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
