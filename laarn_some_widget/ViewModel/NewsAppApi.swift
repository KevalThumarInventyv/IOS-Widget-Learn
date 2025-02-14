//
//  NewsAppApi.swift
//  laarn_some_widget
//
//  Created by Keval Thumar on 13/02/25.
//

import Foundation

public var newsArray: [String] = []
public var imgArray: [String] = []
public var contentArray: [String] = []
// MARK: - Welcome
struct Welcome: Codable {
    let status: String?
    let totalResults: Int?
    let articles: [Article]?
}
// MARK: - Article
struct Article: Codable {
    let source: Source?
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
}
// MARK: - Source
struct Source: Codable {
    let id: String?
    let name: String?
}
public func fetchData() async {
    guard
        let url = URL(
            string:
                "https://newsapi.org/v2/everything?q=apple&from=2025-02-12&to=2025-02-12&sortBy=popularity&apiKey=69280059e0674cfc8c8e3bc30de22bf1"
        )
    else {
        print("Invalid URL")
        return
    }
    do {
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode)
        else {
            print("Invalid response")
            return
        }
        let decoder = JSONDecoder()
        let result = try decoder.decode(Welcome.self, from: data)
        newsArray = result.articles?.compactMap { $0.title ?? "No Title" } ?? []
        imgArray = result.articles?.compactMap { $0.urlToImage ?? "" } ?? []
        contentArray = result.articles?.compactMap(\.content) ?? []
        print("Data fetched successfully")
        print("News Titles: \(newsArray)")
        print("Image URLs: \(imgArray)")
        print("Content: \(contentArray)")
    } catch {
        print("Error fetching data: \(error)")
    }
}
