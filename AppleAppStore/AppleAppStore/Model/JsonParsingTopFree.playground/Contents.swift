import UIKit

struct AppGroup: Codable {
    let feed: Feed
}

struct Feed: Codable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Codable {
    let id: String
    let name: String
    let artistName: String
    let artworkUrl100: String
}

let apiUrl = "https://rss.itunes.apple.com/api/v1/kr/ios-apps/top-free/all/10/explicit.json"

let url = URL(string: apiUrl)!

let session = URLSession.shared

let task = session.dataTask(with: url) { (data, response, error) in
    if let error = error {
        print(error)
        return
    }
    
    guard let httpResponse = response as? HTTPURLResponse else {
        print("Invalid response")
        return
    }
    
    guard (200...299).contains(httpResponse.statusCode) else {
        print(httpResponse.statusCode)
        return
    }
    
    guard let data = data else {
        fatalError("Invalid Data")
    }
    
    do {
        let decoder = JSONDecoder()
        let topFree = try decoder.decode(AppGroup.self, from: data)
        
        topFree.feed.results
        topFree.feed.title
        
        topFree.feed.results.first?.id
        topFree.feed.results.first?.name
        topFree.feed.results.first?.artistName
        topFree.feed.results.first?.artworkUrl100
        
    } catch {
        print(error)
    }
}

task.resume()


