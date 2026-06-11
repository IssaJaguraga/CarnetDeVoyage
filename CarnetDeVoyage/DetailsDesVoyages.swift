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
                colors: [Color(red: 0.98, green: 0.92, blue: 0.75), Color(red: 0.55, green: 0.78, blue: 0.88)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack() {
                
                Image(lieu.image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(width: 200)
                
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
