//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by Issa on 01/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.orange
            
            
            VStack {
                Image(systemName: "person")
                    .imageScale(.large)
                    .foregroundStyle(Color.black)
                    
                Text("Issa")
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
