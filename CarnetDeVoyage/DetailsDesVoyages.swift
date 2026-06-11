//
//  DetailsDesVoyages.swift
//  CarnetDeVoyage
//
//  Created by Issa on 04/06/2026.
//

import SwiftUI

struct DetailsDesVoyages: View {
    
    let lieu: Lieu
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.yellow.opacity(0.4), .blue.opacity(0.3)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack() {
                
                Image(lieu.image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(width: 200)
                    .ignoresSafeArea()
                
                Text(lieu.nom)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(lieu.pays)
                    .font(.title2)
                    .foregroundStyle(.secondary)
                
                Text(lieu.description)
                    .padding(16)
                    .multilineTextAlignment(.center)
                    .lineSpacing(5)
                    .frame(maxWidth: .infinity)
                
                }
            }
        }
    }

#Preview {
    DetailsDesVoyages(lieu: Lieu.lieux[0])
}
