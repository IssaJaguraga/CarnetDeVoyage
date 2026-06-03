//
//  MonCarnetDeVoyageView.swift
//  CarnetDeVoyage
//
//  Created by Issa on 03/06/2026.
//

import SwiftUI

struct MonCarnetDeVoyageView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(
                colors: [.yellow, .cyan],
                startPoint: .leading,
                endPoint: .trailing)
                .ignoresSafeArea()
            VStack(alignment: .center){
                Text("Mon Carnet de Voyage")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                Image(.islande)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle (cornerRadius: 16))
                    .padding(.leading)
                    .shadow(radius: 11, y: 34)
                
                    .overlay(alignment: .bottomLeading) {
                        Text("Islande")
                            .font(.title2.bold())
                            .foregroundStyle(.white)
                            .padding()
                }
                
                    .padding()
                
                    .overlay(alignment: .topTrailing) {
                        HStack {
                            Image(systemName: "checkmark.circle.fill")
                            Text("Visité")
                        }
                        .font(.caption.bold())
                        .foregroundStyle(.white)
                        .padding (8)
                        .background(.green, in: Capsule())
                        .padding(24)
                    }
                
            }
        }

    }
        
}

#Preview {
    MonCarnetDeVoyageView()
}
