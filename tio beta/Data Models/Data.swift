//
//  data.swift
//  tio beta
//
//  Created by NAVEEN MADHAN on 1/11/20.
//  Copyright © 2020 Navemics. All rights reserved.
//

import Foundation
import UIKit

let quoteData: [Quote] = load("quotes.json")

func load<T: Decodable>(_ filename:String, as type:T.Type = T.self) -> T {
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from Main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from:data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
