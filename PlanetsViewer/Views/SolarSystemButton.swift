//
//  SolarSystemButton.swift
//  PlanetsViewer
//
//  Created by Elliot Knight on 14/04/2024.
//

import SwiftUI

struct SolarSystemButton: View {
    @Environment(PlanetToDisplayHelper.self) private var helper
    @Environment(\.openWindow) private var openImmersiveSpace
    @Environment(\.openWindow) private var dismissImmersiveSpace
    var module: Module

    var body: some View {
        Button {
            helper.selectedModule = module
            Task {
                if helper.isShowingSolar {
                    dismissImmersiveSpace(id: "Globe")
                } else {
                    openImmersiveSpace(id: "Globe")
                }
            }
        } label: {
            Text(module.callToAction)
        }
    }
}

#Preview {
    SolarSystemButton(module: .mercury)
        .environment(PlanetToDisplayHelper())
}
