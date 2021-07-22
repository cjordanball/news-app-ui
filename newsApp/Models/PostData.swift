//
//  PostData.swift
//  newsApp
//
//  Created by C. Jordan Ball III on 7/22/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {return objectID}
    let title: String;
    let points: Int;
    let url: String?;
    let objectID: String;
}

struct MiniPost: Identifiable {
    var id: String;
    var text: String;
}
