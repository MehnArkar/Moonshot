//
//  AstronautView.swift
//  Moonshot
//
//  Created by Arkar Min on 14/01/2024.
//

import SwiftUI

struct AstronautView: View {
    let astronaut : Astronaut
    var body: some View {
        ScrollView{
            Image(astronaut.id)
                .resizable()
                .scaledToFit()
            
            Text(astronaut.description)
                .foregroundStyle(.white)
                .padding()
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts : [String : Astronaut] = Bundle.main.decode("astronauts.json")
    return AstronautView(astronaut: astronauts["grissom"]!)
}
