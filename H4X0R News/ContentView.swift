//
//  ContentView.swift
//  H4X0R News
//
//  Created by Cem Akkaya on 17/02/26.
//

import SwiftUI

struct ContentView: View {
    
    var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List {
                Text("post.title")
            }
            .navigationTitle("H4X0R NEWS")
        }
    }
}

#Preview {
    ContentView()
}

