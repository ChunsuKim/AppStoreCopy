//
//  AppGroup.swift
//  AppleAppStore
//
//  Created by Chunsu Kim on 03/07/2019.
//  Copyright © 2019 Chunsu Kim. All rights reserved.
//

import Foundation

struct AppGroup: Codable {
    let feed: Feed
}

struct Feed: Codable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Codable {
    let id: String
    let releaseDate: String
    let name: String
    let artistName: String
    let artworkUrl100: String
}
