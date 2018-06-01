//
//  Album.swift
//  RxItunesService
//
//  Created by Alexandre Freire on 01/06/2018.
//

import Foundation
/*
 "wrapperType":"collection",
 "collectionType":"Album",
 "artistId":15036754,
 "collectionId":436726144,
 "amgArtistId":478804,
 "artistName":"Extremoduro",
 "collectionName":"Material Defectuoso",
 "collectionCensoredName":"Material Defectuoso",
 "artistViewUrl":"https://itunes.apple.com/us/artist/extremoduro/15036754?uo=4",
 "collectionViewUrl":"https://itunes.apple.com/us/album/material-defectuoso/436726144?uo=4",
 "artworkUrl60":"https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1b/8d/3b/1b8d3b49-04c6-4977-5e03-c4d29738f275/source/60x60bb.jpg",
 "artworkUrl100":"https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1b/8d/3b/1b8d3b49-04c6-4977-5e03-c4d29738f275/source/100x100bb.jpg",
 "collectionPrice":5.99,
 "collectionExplicitness":"notExplicit",
 "trackCount":6,
 "copyright":"℗ 2011 Warner Music Spain, S.L.",
 "country":"USA",
 "currency":"USD",
 "releaseDate":"2011-05-24T07:00:00Z",
 "primaryGenreName":"Rock y Alternativo"
 */

public struct Album: Decodable  {
    let identifier: String
    let name: String
    let artworkURL: URL
    let price: Double
    let trackCount: Int
    let copyright: String
    let releaseDate: Date
    let genre: String
    let artistIdentifier: String
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
        case artistIdentifier = "ArtistId"
        case artistName
        case artistViewURL = "artistViewUrl"
    }
}

