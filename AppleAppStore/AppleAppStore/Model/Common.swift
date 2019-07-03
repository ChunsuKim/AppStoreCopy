//
//  Common.swift
//  AppleAppStore
//
//  Created by Chunsu Kim on 03/07/2019.
//  Copyright © 2019 Chunsu Kim. All rights reserved.
//

import Foundation

let searchTerm = "카카오"

// API URL List
let searchUrl = "https://itunes.apple.com/search?term=\(searchTerm)&entity=software"

let topGrossingUrl = "https://rss.itunes.apple.com/api/v1/us/ios-apps/top-grossing/all/50/explicit.json"

let gamesUrl = "https://rss.itunes.apple.com/api/v1/us/ios-apps/new-games-we-love/all/50/explicit.json"

let topFreeUrl = "https://rss.itunes.apple.com/api/v1/us/ios-apps/top-free/all/10/explicit.json"
