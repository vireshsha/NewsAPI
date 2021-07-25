//
//  NewsNetworkHandler.swift
//  NewsArticle
//
//  Created by Viresh Sharma on 25/07/21.
//  Copyright © 2021 Viresh Sharma. All rights reserved.
//

import Foundation
import RxSwift

protocol NewsListNetworkHandling {
    func getTopHeadlines(_ param: [String: String]?) -> Observable<[NewsModel]>
}

typealias NewsNetworkHandling = NewsListNetworkHandling

final class NewsNetworkHandler: NewsNetworkHandling {
    private let defaultParam: [String: String] = [ApiKey.country: Environment.Variables.countryGB,
                                                  ApiKey.category: Environment.Variables.categorySports]
    private let webService: WebServiceProtocol

    init(withWebService webService: WebServiceProtocol = WebService()) {
        self.webService = webService
    }

    func getTopHeadlines(_ param: [String: String]?) -> Observable<[NewsModel]> {
        guard let url = URL.topHeadlinesUrl else { return Observable<[NewsModel]>.error(NetworkError.badURL) }
        let parameter = param ?? defaultParam

        let resource: Resource<NewsResult> = { Resource(url: url, parameter: parameter) }()

        return self.webService.load(resource: resource)
            .map { $0.articles }
            .asObservable()
            .retry(2)
    }
}
