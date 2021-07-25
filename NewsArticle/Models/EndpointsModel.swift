//
//  EndpointsModel.swift
//  NewsArticle

import Foundation

struct EndpointsModel: Decodable, Equatable {
    let endpointList: [EndpointSourcesModel]?
    let totalResults: Int?
}

struct EndpointSourcesModel: Decodable, Equatable {
    let id: Int?
    let name: String?
    let endpoint: String?
}

extension EndpointSourcesModel {
    static func == (lhs: EndpointSourcesModel, rhs: EndpointSourcesModel) -> Bool {
        return lhs.id == rhs.id && lhs.endpoint == rhs.endpoint
    }
}
