//
//  Planet.swift
//  PlanetsViewer
//
//  Created by Harry Knight on 12/04/2024.
//

import Foundation

enum Planet: String, Identifiable, CaseIterable, Equatable, Codable {
    case sun, mercury, uranus, venus
    var id: Self { self }
    var name: String { rawValue.capitalized }

    var description: String {
        switch self {
        case .sun:
            "The Sun, our nearest star, is a luminous ball of hot gases primarily composed of hydrogen and helium. Located at the center of our solar system, it radiates immense amounts of energy, providing light and warmth to the planets orbiting around it.\n\nWith a diameter of about 1.4 million kilometers, the Sun is incredibly massive, accounting for over 99% of the total mass of our solar system. Its surface, known as the photosphere, has a temperature of around 5,500 degrees Celsius, while its core reaches temperatures of millions of degrees Celsius due to nuclear fusion reactions.\n"
        case .mercury:
            "Mercury, the closest planet to the Sun, is a small, rocky world with extreme temperatures due to its proximity to the Sun. It has a diameter of about 4,880 kilometers and lacks a significant atmosphere, which means it experiences vast temperature variations between its scorching hot daytime and freezing cold nights.\n\nDespite its small size, Mercury exhibits some intriguing features, including extensive cratering and unique surface formations like cliffs and valleys. Its orbit is highly elliptical, making it subject to gravitational perturbations from the Sun and other planets.\n"
        case .uranus:
            "Uranus, the seventh planet from the Sun, is a gas giant with a pale blue-green appearance due to methane in its atmosphere. It's the third largest planet in our solar system, with a diameter of about 51,118 kilometers. Unlike most planets, Uranus rotates on its side, possibly due to a collision in its distant past.\n\nIts atmosphere is composed mainly of hydrogen and helium, with traces of methane. Uranus has a ring system and a diverse range of moons, the largest of which is named Titania. Despite its considerable size, Uranus is much less studied compared to other planets due to its distance from Earth and the challenges of sending spacecraft there.\n"
        case .venus:
            "Venus, often called Earth's sister planet due to its similar size and composition, is the second planet from the Sun. It has a diameter of about 12,104 kilometers and is covered by thick clouds of sulfuric acid, creating a dense atmosphere primarily composed of carbon dioxide.\n\nVenus experiences extreme surface temperatures, with an average of around 462 degrees Celsius, making it the hottest planet in our solar system. Despite its proximity to Earth, Venus has a vastly different environment, with a runaway greenhouse effect contributing to its inhospitable conditions.\n\nIts surface is marked by vast volcanic plains, impact craters, and mountain ranges, including Maxwell Montes, the highest peak on Venus. While it was once thought to have oceans, recent research suggests that any water it may have had evaporated long ago due to the intense heat.\n"
        }
    }

    var callToAction: String {
        switch self {
        case .sun:
            "View Sun"
        case .mercury:
            "View Mercury"
        case .uranus:
            "View Uranus"
        case .venus:
            "View Venus"
        }
    }
}
