//
//  DetailsDesVoyages.swift
//  CarnetDeVoyage
//
//  Created by Issa on 04/06/2026.
//

import SwiftUI

struct DetailsDesVoyages: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.yellow.opacity(0.4), .purple.opacity(0.2)],
                startPoint: .leading,
                endPoint: .trailing)
                .ignoresSafeArea()

            VStack() {
                    
                Image(.newZealand)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200)
                Text("La New Zealand")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Des paysages à couper le souffle")
                    .font(.title2)
                    .foregroundStyle(.secondary)
                Text("La Nouvelle-Zélande est l’un des pays les plus spectaculaires au monde. Entre ses fjords majestueux, ses montagnes imposantes, ses lacs turquoise et ses vallées verdoyantes, chaque paysage semble sortir d’un film d’aventure.")
                
                    .padding(16)
                    .multilineTextAlignment(.center)
                    .lineSpacing(5)
                    .frame(maxWidth: .infinity)
                
                
                
            }


        }
    }
}

#Preview {
    DetailsDesVoyages()
}
