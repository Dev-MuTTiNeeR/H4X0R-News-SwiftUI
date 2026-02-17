//
//  PostData.swift
//  H4X0R News
//
//  Created by Cem Akkaya on 17/02/26.
//

import Foundation

// Modernization: Sendable added (for Thread Safety)
struct Results: Decodable, Sendable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable, Sendable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
