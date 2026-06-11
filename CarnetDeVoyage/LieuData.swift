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
    var pays: String
    var continent: String = ""
    var description: String = ""
    var visite: Bool = false
    var note: Int = 4
    var image: ImageResource
    var symbole: String = "photo"
    
    static let lieux: [Lieu] = [
        Lieu(nom: "Reykjavik", pays: "Islande", continent: "Europe", description: "Sentez le souffle de l'océan et admirez la grandeur des falaises sculptées par le temps. Une invitation à l'exploration et aux grands espaces sauvages.", visite: true, note: 5, image: .islande, symbole: "sun.max.fill"),
        Lieu(nom: "Canberra", pays: "New Zealand", continent: "Australie", description: "La Nouvelle-Zélande est l’un des pays les plus spectaculaires au monde. Entre ses fjords majestueux, ses montagnes imposantes, ses lacs turquoise et ses vallées verdoyantes, chaque paysage semble sortir d’un film d’aventure.", visite: true, note: 5, image: .australie, symbole: "snowflake"),
        Lieu(nom: "Oslo", pays: "Norvège", continent: "Europe", description: "Oslo est entourée de fjords impressionnants et de forêts profondes. La Norvège offre des paysages calmes, froids et d’une beauté naturelle exceptionnelle.", visite: true, note: 5, image: .norvège, symbole: "leaf.fill"),
        Lieu(nom: "Berne", pays: "Suisse", continent: "Europe", description: "Berne est une ville au cœur des Alpes suisses, entourée de montagnes, de lacs et de paysages verdoyants parfaits pour les amoureux de nature.", visite: true, note: 5, image: .suisse, symbole: "drop.fill"),
        Lieu(nom: "Bora Bora", pays: "Polynésie française", continent: "Océanie", description: "Bora Bora est un paradis tropical avec ses eaux turquoise, ses plages de sable blanc et son lagon entouré de montagnes volcaniques.", visite: true, note: 5, image: .boraboraPng, symbole: "flame.fill"),
        Lieu(nom: "Ottawa", pays: "Canada", continent: "Amérique du Nord", description: "Ottawa combine nature et urbanisme avec de vastes rivières, des forêts et des paysages canadiens impressionnants en toute saison.", visite: true, note: 5, image: .canada, symbole: "mountain.2.fill")
    ]
    var couleurs: [Color] {
        switch symbole {
        case "sun.max.fill":   return [.orange, .pink]
        case "snowflake":      return [.blue, .cyan]
        case "leaf.fill":      return [.green, .teal]
        case "drop.fill":      return [.teal, .blue]
        case "flame.fill":     return [.red, .orange]
        case "mountain.2.fill":return [.indigo, .purple]
        default:               return [.gray, .secondary]
        }
    }
}
struct LieuCard: View {
    let lieu: Lieu
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: lieu.symbole)
                .font(.title2)
                .foregroundStyle(.white)
                .frame(width: 44, height: 44)
                .background(LinearGradient(colors: lieu.couleurs, startPoint: .top, endPoint: .bottom))
                .clipShape(.rect(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(lieu.nom).font(.headline)
                Text(lieu.pays).font(.subheadline).foregroundStyle(.secondary)
            }
            
            Spacer()
//            
//            if lieu.visite {
//                Image(systemName: "checkmark.circle.fill").foregroundStyle(.green)
//            }
        }
    }
}

