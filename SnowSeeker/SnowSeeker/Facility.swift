//
//  Facility.swift
//  SnowSeeker
//
//  Created by Tal talspektor on 23/06/2022.
//

import SwiftUI

struct Facility: Identifiable {
    let id = UUID()
    var name: String

    private let icons = [
        "Accommodation": "house",
        "Beginners": "1.circle",
        "Cross-country": "map",
        "Eco-friendly": "leaf.arrow.circlepath",
        "Family": "person.3"
    ]

    private let descriptions =  [
        "Accommodation": "This resort has popular on-site accommodation.",
        "Beginners": "This resort has lots of skil schools.",
        "Cross-country": "This resort has many cross-country ski routs.",
        "Eco-friendly": "This resort has won an award for environmental friendliness.",
        "Family": "This resotr is popular with families."
    ]

    var icon: some View {
        if let iconName = icons[name] {
            return Image(systemName: iconName)
                .accessibilityLabel(name)
                .foregroundColor(.secondary)
        } else {
            fatalError("Unknown facility type: \(name)")
        }
    }

    var descroption: String {
        if let message = descriptions[name] {
            return message
        } else {
            fatalError("Unknown facility type: \(name)")
        }
    }
}
