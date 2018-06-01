//
//  WebServiceAssembly.swift
//  RxItunesService
//
//  Created by Alexandre Freire on 01/06/2018.
//

import Foundation

final class WebServiceAssembly {
    private(set) lazy var webService = WebService()
    
    private(set) lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        
        return formatter
    }()
}
