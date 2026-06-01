//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by Issa on 01/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Issa")
                .font(.largeTitle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
