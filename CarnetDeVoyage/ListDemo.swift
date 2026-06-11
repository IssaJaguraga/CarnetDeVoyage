//
//  ListDemo.swift
//  CarnetDeVoyage
//
//  Created by Issa on 04/06/2026.
//

import SwiftUI

struct ListDemo: View {
    
    @State private var lieux = Lieu.lieux
    @State private var recherche = ""
    
    private var resultats: [Lieu] {
        recherche.isEmpty ? lieux : lieux.filter
        { $0.nom.localizedStandardContains(recherche) }
    }
    var body: some View {
        
        NavigationStack {
            VStack {
                List {
                    ForEach(resultats) { lieu in
                        LieuCard(lieu: lieu)
                    }
                }
                .searchable(text: $recherche, prompt: "Rechercher")
                .refreshable {
                }
            }
        }
        .navigationTitle("Mes destinations")
    }
}
#Preview {
    NavigationStack { ListDemo()}
}
