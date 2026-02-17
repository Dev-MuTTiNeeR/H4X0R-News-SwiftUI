//
//  PostData.swift
//  H4X0R News
//
//  Created by Cem Akkaya on 17/02/26.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
