//
//  Landmark.swift
//  Landmarks
//
//  Created by Yukari Yakumo on 17/07/2023.
//

import Foundation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var subname: String
    var description: String
    var wikiEntry: String
    var imageName: String
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case shrine = "Shrines"
        case forest = "Forest"
        case mansion = "Mansion"
    }
}
