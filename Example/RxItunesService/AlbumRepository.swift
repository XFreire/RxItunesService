//
//  AlbumRepository.swift
//  RxItunesService_Example
//
//  Created by Alexandre Freire on 01/06/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import RxSwift
@testable import RxItunesService

final class AlbumRepository {
    
    let webService = WebService()
    
    func album(withQuery query: String) -> Observable<[Album]> {
        return webService.load(Result<Album>.self, from: .album(withQuery: query, limit: 10))
            .map{ $0.results }
    }
}
