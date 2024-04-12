//
//  ContentView.swift
//  PlanetsViewer
//
//  Created by Harry Knight on 12/04/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
//    @State private var showImmersiveSpace = false
//    @State private var immersiveSpaceIsShown = false
//    
//    @Environment(\.openImmersiveSpace) var openImmersiveSpace
//    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    var body: some View {
        NavigationStack {
            List(Planet.sample) { planet in
                NavigationLink(destination: PlanetDetailView(planet: planet)) {
                    HStack(alignment: .center, spacing: 10) {
                        makeModel3D(named: planet.name)
                        VStack(alignment: .leading, spacing: 10) {
                            Text(planet.name)
                                .font(.title)
                            Text(planet.description)
                                .lineLimit(2)
                                .font(.title3)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Planets Viewer")
        }
    }
    
    func makeModel3D(named: String) -> some View {
        Model3D(named: named, bundle: realityKitContentBundle) { model in
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
    ContentView()
}
