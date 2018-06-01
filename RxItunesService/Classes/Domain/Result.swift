//
//  Result.swift
//  RxItunesService
//
//  Created by Alexandre Freire on 01/06/2018.
//

import Foundation

public struct Result<T>: Decodable where T: Decodable {
    let resultCount: Int
    let results: [T]
}
