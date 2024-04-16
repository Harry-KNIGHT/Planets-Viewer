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
    var planet: Planet

    var body: some View {
        Button {
            helper.selectedPlanet = planet
            Task {
                if helper.isShowingSolar {
                  dismissImmersiveSpace(id: planet.id.rawValue, value: planet)
                } else {
                    openImmersiveSpace(id: planet.id.rawValue, value: planet)
                }
            }
        } label: {
            Text(planet.callToAction)
        }
    }
}

#Preview {
    SolarSystemButton(planet: .mercury)
        .environment(PlanetToDisplayHelper())
}
