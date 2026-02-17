//
//  ContentView.swift
//  H4X0R News
//
//  Created by Cem Akkaya on 17/02/26.
//

import SwiftUI

struct ContentView: View {
    
    // We claim ownership of the object with @State (@ObservedObject is old.)
    @State private var networkManager = NetworkManager()
    
    var body: some View {
        NavigationStack { // Next-generation navigation
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                            .foregroundStyle(.secondary)
                            .frame(width: 40, alignment: .leading)
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
            .listStyle(.plain)
            
            // Starts fetching data when the view appears
            .task {
                await networkManager.fetchData()
            }
        }
    }
}

#Preview {
    ContentView()
}

