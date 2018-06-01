//
//  Artist.swift
//  RxItunesService
//
//  Created by Alexandre Freire on 01/06/2018.
//

import Foundation

public struct Artist: Decodable {
    
    let identifier: Int
    let name: String
    let linkURL: URL
    let genre: String?
    
    private enum CodingKeys: String, CodingKey {
        case identifier = "artistId"
        case name = "artistName"
        case linkURL = "artistLinkUrl"
        case genre = "primaryGenreName"
    }
}

extension Artist: CustomStringConvertible {
    public var description: String {
        return """
        ---------------------
        ---------------------
        Id: \(identifier),
        Name: \(name),
        Link: \(linkURL),
        Genre: \(genre ?? "")
        """
    }
    
    
}
