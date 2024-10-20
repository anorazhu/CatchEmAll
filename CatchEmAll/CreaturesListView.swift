//
//  ContentView.swift
//  CatchEmAll
//
//  Created by Anora Zhu on 10/20/24.
//

import SwiftUI

struct CreaturesListView: View {
    var creatures = ["Pikachu", "Squirtle", "Charzard", "Snolax"]
    var body: some View {
        List(creatures, id: \.self) { creature in
            Text(creature)
                .font(.title2)
        }
        .listStyle(.plain)
        .navigationTitle("Pokemon")
    }
}

#Preview {
    CreaturesListView()
}
