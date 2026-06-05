//
//  ListDemo.swift
//  CarnetDeVoyage
//
//  Created by Issa on 04/06/2026.
//

import SwiftUI

struct ListDemo: View {
    
    struct Lieu2: Identifiable, Hashable {
        let id = UUID()
        let nom: String
        let pays: String
        let continent: String
        let description: String
        var visite: Bool = false
        var note: Int = 4
        var icone: String
    }
    
    
    @State private var lesLieux2: [Lieu2] = [
        Lieu2(nom: "Reykjavik", pays: "Islande", continent: "Europe", description: "", visite: true, note: 5, icone: "snowflake"),
        Lieu2(nom: "Canberra", pays: "New Zealand", continent: "Australie", description: "", visite: true, note: 5, icone: "snowflake"),
        Lieu2(nom: "Oslo", pays: "Norvège", continent: "Europe", description: "", visite: true, note: 5, icone: "snowflake"),
        Lieu2(nom: "Berne", pays: "Suisse", continent: "Europe", description: "", visite: true, note: 5, icone: "snowflake"),
        Lieu2(nom: "Bora Bora", pays: "Polynésie française", continent: "Océanie", description: "", visite: true, note: 5, icone: "snowflake"),
        Lieu2(nom: "Ottawa", pays: "Canada", continent: "Amérique du Nord", description: "", visite: true, note: 5, icone: "snowflake")
    ]
    @State private var recherche = ""
    private var resultats: [Lieu2] {
        if recherche.isEmpty { return lesLieux2 }
        return lesLieux2.filter { $0.nom.localizedCaseInsensitiveContains(recherche) }
    }
    
    
    var body: some View {
        List {
            ForEach(lesLieux2) { lieu2 in
                Text(lieu2.nom)
                    .listRowBackground(
                        LinearGradient(
                            colors: [.yellow, .cyan],
                            startPoint: .leading,
                            endPoint: .trailing))

                    .swipeActions(edge: .trailing) {
                        Button(role: .destructive) {
                            supprimer(lieu2)
                        } label: {
                            Label("Suprimer", systemImage: "trash")
                        }
                    }
            }
        }
       
    }
    private func supprimer(_ lieu: Lieu2) {
        lesLieux.removeAll() { $0.id == lieu.id }
    }
}
#Preview {
    ListDemo()
}
