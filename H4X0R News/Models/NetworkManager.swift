//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Cem Akkaya on 17/02/26.
//

import Foundation
import Observation // New library required for Observable Macros

@Observable // The new structure that replaces the old ObservableObject
class NetworkManager {
    
    var posts = [Post]()
    
    @MainActor
    // @MainActor: Automatically delivers the result to the Main Thread when the process is complete.
    func fetchData() async { // added 'async' word.
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        
        do {
            // Modern Data Retrieval: Ends in a single line, doing wait(await)
            let (data, _) = try await URLSession.shared.data(from: url)
            
            let decoder = JSONDecoder()
            let results = try decoder.decode(Results.self, from: data)
            
            // DispatchQueue.main.async is not needed, @MainActor handled it.
            self.posts = results.hits
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
}
