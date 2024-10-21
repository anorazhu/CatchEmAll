//
//  ContentView.swift
//  CatchEmAll
//
//  Created by Anora Zhu on 10/20/24.
//

import SwiftUI

struct CreaturesListView: View {
    @State var creatures = Creatures()

    
    var body: some View {
        NavigationStack {
            List(creatures.creaturesArray, id: \.self) { creature in
                Text(creature.name)
                    .font(.title2)
            }
            .listStyle(.plain)
            .navigationTitle("Pokemon")
        }
        .task {
            await creatures.getData()
        }
    }
}

#Preview {
    CreaturesListView()
}
