//
//  InsetFactView.swift
//  Africa
//
//  Created by Damien K. Sedgwick on 22/06/2021.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 145, idealHeight: 165, maxHeight: 180)
            
        }
    }
}

struct InsetFactView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[11])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
