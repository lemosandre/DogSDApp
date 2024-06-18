//
//  ContentView.swift
//  DogSDApp
//
//  Created by Andre Lemos on 16/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = DogListViewModel(service: WebService())
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(viewModel.components, id: \.id) { compomemt in
                    compomemt.render()
                }
                .navigationTitle("DogS")
            }.task {
                await viewModel.load()
            }
        }
    }
}

#Preview {
    ContentView()
}
