//
//  Endpoint.swift
//  Pods-RxItunesService_Example
//
//  Created by Alexandre Freire on 01/06/2018.
//

import Foundation



enum HTTPMethod: String {
    case get = "GET"
}

enum Endpoint {
    case album(withText: String, limit: Int)
}

extension Endpoint {
    func request(with baseURL: URL, adding parameters: [String : String]) -> URLRequest {
        let url = baseURL.appendingPathComponent(path)
        
        var newParameters = self.parameters
        parameters.forEach{ newParameters.updateValue($1, forKey: $0) }
        
        var components = URLComponents(url: url, resolvingAgainstBaseURL: false)!
        components.queryItems = newParameters.map(URLQueryItem.init)
        
        var request = URLRequest(url: components.url!)
        request.httpMethod = method.rawValue
        
        return request
        
    }
}

private extension Endpoint {
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        switch self {
        case .album:
            return ""
        }
    }
    
    var parameters: [String : String] {
        switch self {
        case .album(withText: let text, limit: let limit):
            return [
                "term" : text,
                "entity" : "album",
                "limit" : String(limit)
            ]
        }
    }
    
}
