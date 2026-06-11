//
//  CarrouselVoyagesView.swift
//  CarnetDeVoyage
//
//  Created by Issa on 05/06/2026.
//

import SwiftUI

struct CarrouselVoyagesView: View {
    
    var body: some View {
        Section {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(Lieu.lieux) { lieu in
                        Image(lieu.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300)
                            .clipShape(.rect(cornerRadius: 12))
                        
                    }
                }
            }
            
        }

    }
}

#Preview {
    CarrouselVoyagesView()
}
