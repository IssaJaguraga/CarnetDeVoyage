//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by Issa on 01/06/2026.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                Text("La Carte d'un lieu")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                
                Text("Le livrable du jour : une carte qui combine image cadrée, overlay (badge), Label, formes, étoiles, et tous les modifiers vus aujourd'hui.")
                    .foregroundStyle(.white)
                
                VStack {
                    VStack {
                        UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20)
                            .fill(
                                LinearGradient(
                                    colors: [.orange, .red, .red],
                                    startPoint: .leading,
                                    endPoint: .trailing))
                        
                            .overlay(alignment: .topTrailing) {
                                HStack {
                                    Image(systemName: "checkmark.circle.fill")
                                    Text("Visité")
                                    }
                                    .font(.caption.bold())
                                    .foregroundStyle(.white)
                                    .padding (8)
                                    .background(.green, in: Capsule())
                                    .padding(16)
                            }
                        
                            .overlay {
                                Image(systemName: "sun.max.fill")
                                    .font(.largeTitle)
                                    .foregroundStyle(.white)
                            }
                    }
                    .frame(height: 150)

                    VStack(alignment: .leading, spacing: 5) {
                        Text("Lisbonne")
                        Label("Portugal", systemImage: "map")
                        
                        
                        HStack {
                            
                            ForEach(1...5, id: \.self) { index in
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                            }
                        }
                       
                    }
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                }
                .background(.gray.opacity(0.3), in: RoundedRectangle(cornerRadius: 20))
                
                
                VStack {
                    VStack {
                        UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20)
                            .fill(
                                LinearGradient(
                                    colors: [.green, .cyan],
                                    startPoint: .leading,
                                    endPoint: .trailing))
                    }
                    .overlay {
                        Image(systemName: "leaf.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .padding()
                    }
                    
                    .frame(height: 150)
                    
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Kyoto")
                        Label("Japon", systemImage: "map")
                        HStack {
                            ForEach(1...4, id: \.self) { index in
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                            }
                        }
                        
                    }
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                }
                .background(.gray.opacity(0.3), in: RoundedRectangle(cornerRadius: 20))
                
                VStack {
                    VStack {
                        UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20)
                            .fill(
                                LinearGradient(
                                    colors: [.blue, .cyan],
                                    startPoint: .leading,
                                    endPoint: .trailing))
                        
                    }
                    .overlay {
                        Image(systemName: "snowflake")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .padding()
                    }
                    .frame(height: 150)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Paris")
                        Label("France", systemImage: "map")
                        HStack {
                            ForEach(1...4, id: \.self) { index in
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                            }
                        }
                    }
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
                
                .background(.gray.opacity(0.3), in: RoundedRectangle(cornerRadius: 20))
            }
        }
            .padding()
            .background(.black)
    }
}

#Preview {
    ContentView()
}
