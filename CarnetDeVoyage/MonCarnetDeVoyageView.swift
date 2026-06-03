//
//  MonCarnetDeVoyageView.swift
//  CarnetDeVoyage
//
//  Created by Issa on 03/06/2026.
//

import SwiftUI

struct MonCarnetDeVoyageView: View {
    
    struct Lieu: Identifiable, Hashable {
        let id = UUID()
        let nom: String
        let pays: String
        let continent: String
        var visite: Bool = false
        var note: Int = 4
        var image: ImageResource
    }
    
    static let lesLieux: [Lieu] = [
        Lieu(nom: "Reykjavík", pays: "Islande", continent: "Europe", visite: true, note: 5, image: .islande),
        Lieu(nom: "Canberra", pays: "New Zealand", continent: "Australie", visite: true, note: 5, image: .australie),
        Lieu(nom: "Oslo", pays: "Norvège", continent: "Europe", visite: true, note: 5, image: .norvège),
        Lieu(nom: "Berne", pays: "Suisse", continent: "Europe", visite: true, note: 5, image: .suisse),
        Lieu(nom: "Bora Bora", pays: "Polynésie française", continent: "Océanie", visite: true, note: 5, image: .boraboraPng),
        Lieu(nom: "Ottawa", pays: "Canada", continent: "Amérique du Nord", visite: true, note: 5, image: .canada)
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.yellow, .cyan],
                startPoint: .leading,
                endPoint: .trailing)
            .ignoresSafeArea()
            ScrollView {
                LinearGradient(
                    colors: [.yellow, .cyan],
                    startPoint: .leading,
                    endPoint: .trailing)
                VStack(alignment: .center, spacing: 20){
                    Text("Mon Carnet de Voyage")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                    
                    Text("En route pour un nouveau voyage")
                        .foregroundStyle(.secondary)
                        .font(.title3)
                
                    ForEach(MonCarnetDeVoyageView.lesLieux) { lieu in
                        VStack(spacing: 4) {
                            Image(lieu.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle (cornerRadius: 16))
                                .padding()
                                .shadow(radius: 11, y: 34)
        
                        }
                        
                    }

                }
            }
        }
    }
}

#Preview {
    MonCarnetDeVoyageView()
}
