//
//  ResortDtailsView.swift
//  SnowSeeker
//
//  Created by Tal talspektor on 20/06/2022.
//

import SwiftUI

struct ResortDtailsView: View {
    let resort: Resort

    var size: String {
        switch resort.size {
        case 1:
            return "Small"
        case 2:
            return "Average"
        default:
            return "Large"
        }
    }

    var price: String {
        String(repeating: "$", count: resort.price)
    }
    
    var body: some View {
        Group {
            VStack {
                Text("Size")
                    .font(.caption.bold())
                Text(size)
                    .font(.title3)
            }

            VStack {
                Text("Price")
                    .font(.caption.bold())
                Text(price)
                    .font(.title3)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct ResortDtailsView_Previews: PreviewProvider {
    static var previews: some View {
        ResortDtailsView(resort: Resort.example)
    }
}
