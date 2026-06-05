//
//  Lieu.swift
//  CarnetDeVoyage
//
//  Created by Issa on 04/06/2026.
//

import Foundation
import SwiftUI

struct Lieu: Identifiable, Hashable {
    let id = UUID()
    let nom: String
    let pays: String
    let continent: String
    let description: String
    var visite: Bool = false
    var note: Int = 4
    var image: ImageResource
}

var lesLieux: [Lieu] = [
   Lieu(nom: "Reykjavik", pays: "Islande", continent: "Europe", description: "", visite: true, note: 5, image: .islande),
   Lieu(nom: "Canberra", pays: "New Zealand", continent: "Australie", description: "", visite: true, note: 5, image: .australie),
   Lieu(nom: "Oslo", pays: "Norvège", continent: "Europe", description: "", visite: true, note: 5, image: .norvège),
   Lieu(nom: "Berne", pays: "Suisse", continent: "Europe", description: "", visite: true, note: 5, image: .suisse),
   Lieu(nom: "Bora Bora", pays: "Polynésie française", continent: "Océanie", description: "", visite: true, note: 5, image: .boraboraPng),
   Lieu(nom: "Ottawa", pays: "Canada", continent: "Amérique du Nord", description: "", visite: true, note: 5, image: .canada)
]
