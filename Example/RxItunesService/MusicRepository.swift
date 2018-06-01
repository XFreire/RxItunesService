//
//  AlbumRepository.swift
//  RxItunesService_Example
//
//  Created by Alexandre Freire on 01/06/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import RxSwift
@testable import RxItunesService

final class MusicRepository {
    
    let webService = WebService()
    
    func albums(withQuery query: String) -> Observable<[Album]> {
        return webService.load(Result<Album>.self, from: .albums(withQuery: query, limit: 10))
            .map{ $0.results }
    }
    
    func artists(withQuery query: String) -> Observable<[Artist]> {
        return webService.load(Result<Artist>.self, from: .artists(withQuery: query, limit: 10))
            .map{ $0.results }
    }
    
    func songs(withQuery query: String) -> Observable<[Song]> {
        return webService.load(Result<Song>.self, from: .songs(withQuery: query, limit: 10))
            .map{ $0.results }
    }
}
