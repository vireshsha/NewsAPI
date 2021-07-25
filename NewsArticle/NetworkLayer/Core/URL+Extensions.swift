//
//  URL+Extensions.swift
//  NewsArticle

import Foundation

extension URL {
    static var topHeadlinesUrl: URL? { URL(string: ApiConstant.baseServerURL + ApiConstant.topHeadlines) }
    static func selectedAPIUrl(withUrl url: String) -> URL? { URL(string: ApiConstant.baseServerURL + url) }
    static var sourcesUrl: URL? { URL(string: ApiConstant.baseServerURL + ApiConstant.getSources) }
}

struct ApiKey {
    static let sources = "sources"
    static let apiKey = "apiKey"

    static let country = "country"
    static let category = "category"
}

struct Environment {
    struct Variables {
        static let appId = "77391af3634040139589390f9b044656"
        static let country = "us"
        static let countryGB = "us"
        static let categorySports = "business"
    }
}

struct ApiConstant {
    static let baseServerURL = "https://newsapi.org"
    static let topHeadlines = "/v2/top-headlines"
    static let getSources = "/v2/sources"
}
