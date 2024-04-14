//
//  GlobeView.swift
//  PlanetsViewer
//
//  Created by Elliot Knight on 14/04/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct GlobeView: View {
    @Environment(PlanetToDisplayHelper.self) var helper
    var module: Module
    var body: some View {
        RealityView { content in
            if let globeEntity = try? await Entity(named: module.name, in: realityKitContentBundle) {
                globeEntity.scale = [2.5, 2.5, 2.5]
                content.add(globeEntity)
            }
        }
        .onDisappear {
            helper.isShowingSolar = false
        }
    }
}

#Preview {
    GlobeView(module: .mercury)
}
