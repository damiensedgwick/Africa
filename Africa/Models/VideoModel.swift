//
//  VideoModel.swift
//  Africa
//
//  Created by Damien K. Sedgwick on 23/06/2021.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
