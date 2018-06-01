//
//  Song.swift
//  RxItunesService
//
//  Created by Alexandre Freire on 01/06/2018.
//

import Foundation

public struct Song: Decodable {
    let identifier: Int
    let title: String
    let artistName: String
    let albumName: String?
    let artistViewURL: URL?
    let albumViewURL: URL?
    let trackViewURL: URL?
    let artworkURL: URL
    let price: Double
    let releaseDate: Date 
    let timeMillis: Int64
    let genre: String
    
    private enum CodingKeys: String, CodingKey {
        case identifier = "trackId"
        case title = "trackName"
        case artistName
        case albumName = "collectionName"
        case artistViewURL = "artistViewUrl"
        case albumViewURL = "collectionViewUrl"
        case trackViewURL = "trackViewUrl"
        case artworkURL = "artworkUrl100"
        case price = "trackPrice"
        case releaseDate
        case timeMillis = "trackTimeMillis"
        case genre = "primaryGenreName"
    }
}

extension Song: CustomStringConvertible {
    public var description: String {
        return """
        ---------------------
        ---------------------
        Title: \(title),
        Artist: \(artistName),
        Album: \(albumName ?? ""),
        ArtworkURL: \(artworkURL),
        Price: \(price),
        Release Date: \(releaseDate),
        TimeMillis: \(timeMillis),
        Genre: \(genre),
        """
    }
    
    
}
