//
//  MonCarnetDeVoyageView.swift
//  CarnetDeVoyage
//
//  Created by Issa on 03/06/2026.
//

import SwiftUI

struct MonCarnetDeVoyageView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [Color(red: 0.98, green: 0.92, blue: 0.75), Color(red: 0.55, green: 0.78, blue: 0.88)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .center, spacing: 20) {
                        Text("Mon Carnet de Voyage")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                        Text("En route pour une nouvelle aventure")
                            .foregroundStyle(.secondary)
                            .font(.title3)
                        
                        ForEach(Lieu.lieux) { lieu in
                            NavigationLink {
                                DetailsDesVoyages(lieu: lieu)
                            } label: {
                                VStack {
                                    Image(lieu.image)
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                        .padding(.horizontal)
                                        .shadow(radius: 11, y: 34)
                                    
                                    
                                    Text("\(lieu.pays) - \(lieu.nom)")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading)
                                        .padding(.top, 2)
                                }
                                .padding(8)
                            }
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
