//
//  AddView<.swift
//  CarnetDeVoyage
//
//  Created by Issa on 05/06/2026.
//

import SwiftUI

struct AddView: View {
    @State var nameOfCity = ""
    @Environment(\.dismiss) private var dismiss
    @Binding var lieux : [Lieu]
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Ajouter une ville", text: $nameOfCity)
            }
            .toolbar {
                ToolbarItem {
                    Button("Save") {
                        let newLieu = Lieu(
                            nom: nameOfCity,
                            pays: "Inconnu",
                            continent: nil,
                            description: nil,
                            visite: false,
                            note: 0,
                            image: .canada
                        )
                        lieux.append(newLieu)
                        nameOfCity = ""
                        dismiss()

                    }
                }
            }
        }

    }
}

#Preview {
    AddView(
        lieux: .constant([
            Lieu(
                nom: "Berlin",
                pays: "Allemagne",
                continent: nil,
                description: nil,
                visite: false,
                note: 0,
                image: .canada
            )
        ])
    )
}
