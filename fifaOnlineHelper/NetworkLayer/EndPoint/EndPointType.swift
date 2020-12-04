//
//  EndPointType.swift
//  fifaOnlineHelper
//
//  Created by 60105277 on 2020/12/04.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask{ get }
    var headers: HTTPHeaders? { get }
}


