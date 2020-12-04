//
//  NetworkManager.swift
//  fifaOnlineHelper
//
//  Created by 60105277 on 2020/12/04.
//

import Foundation

struct NetworkManager {
    static let environment: NetworkEnvironment = .production
    static let MovieAPIKey = ""
    static let router = Router<MovieApi>()
}

enum NetworkResponse: String {
    case success
    case authenticationError = "You need to be authenticated first"
    case badRequest = "Bad request"
    case outdated = "The url you requested is outdated"
    case failed = "Network request failed"
    case noData = "Response returned with no data to decode."
    case unableToDecode = "We could not decode the response"
}

enum Result<String> {
    case success
    case failure(String)
}

fileprivate func handleNetworkResponse(_ response: HTTPURLResponse) -> Result<String> {
    switch response.statusCode {
    case 200...299:
        return .success
    case 401...500:
        return .failure(NetworkResponse.authenticationError.rawValue)
    case 501...599:
        return .failure(NetworkResponse.badRequest.rawValue)
    case 600:
        return .failure(NetworkResponse.outdated.rawValue)
    default:
        return .failure(NetworkResponse.failed.rawValue)
    }
}
