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
            
            VStack {
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
                        Text("En route pour une nouvelle aventure")
                            .foregroundStyle(.secondary)
                            .font(.title3)
                        
                        ForEach(Lieu.lieux) { lieu in
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

#Preview {
    MonCarnetDeVoyageView()
}
