//
//  DateDecoder.swift
//  Networking
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import Foundation

final class DateDecoder: JSONDecoder {
    
    let dateFormatter = DateFormatter()
    
    override init() {
        super.init()
        // "2020-10-10T03:50:06.151+05:30
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXX"
        dateDecodingStrategy = .formatted(dateFormatter)
    }
    
}
