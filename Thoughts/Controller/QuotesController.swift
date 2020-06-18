//
//  QuotesController.swift
//  Thoughts
//
//  Created by Murillo R. Araujo on 18/06/20.
//  Copyright © 2020 MR de Araujo. All rights reserved.
//

import Foundation

class QuotesController {
    let quotes: [Quote]
    
    init() {
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        quotes = try! jsonDecoder.decode([Quote].self, from: jsonData)
    }
    
    func getRandomQuote() -> Quote {
        let index = Int(arc4random_uniform(UInt32(quotes.count)))
        return quotes[index]
    }
}
