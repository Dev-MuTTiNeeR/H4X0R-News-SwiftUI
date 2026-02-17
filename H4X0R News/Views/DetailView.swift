//
//  DetailView.swift
//  H4X0R News
//
//  Created by Cem Akkaya on 17/02/26.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
