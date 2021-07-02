//
//  CreditsView.swift
//  Africa
//
//  Created by Damien K. Sedgwick on 02/07/2021.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 125, height: 125)
            
            Text("""
    Copyright © Damein Sedgwick
    All rights reserverd
    Better Apps Less Code ❤️
    """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.5)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
