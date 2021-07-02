//
//  CenterModifier.swift
//  Africa
//
//  Created by Damien K. Sedgwick on 02/07/2021.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
