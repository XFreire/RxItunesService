//
//  Album.swift
//  RxItunesService
//
//  Created by Alexandre Freire on 01/06/2018.
//

import Foundation

public struct Album: Decodable  {
    let identifier: Int
    let name: String
    let artworkURL: URL
    let price: Double
    let trackCount: Int
    let copyright: String
    let releaseDate: Date
    let genre: String
    let artistIdentifier: Int
    let artistName: String
    let artistViewURL: URL
    
    private enum CodingKeys: String, CodingKey {
        case identifier = "collectionId"
        case name = "collectionName"
        case artworkURL = "artworkUrl100"
        case price = "collectionPrice"
        case trackCount
        case copyright
        case releaseDate
        case genre = "primaryGenreName"
        case artistIdentifier = "artistId"
        case artistName
        case artistViewURL = "artistViewUrl"
    }
}

extension Album: CustomStringConvertible {
    public var description: String {
        return """
        ---------------------------
        ---------------------------
        Title: \(name),
        Author: \(artistName),
        Track Count: \(trackCount),
        Genre: \(genre),
        Price: \(price)
        """
    }
    
    
}
