//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by Issa on 01/06/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var monText: String = "Hello"

    var body: some View {
        ZStack {
            Color.orange
            
            VStack {
                Image(systemName: "person")
                    .font(.largeTitle)
                    .foregroundStyle(Color.black)
                    
                Text("Issa")
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
                
                Button(monText) {
                monText = "Bonjour"
                    
                }
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
