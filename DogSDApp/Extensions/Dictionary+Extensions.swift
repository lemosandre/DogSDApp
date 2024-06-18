//
//  Dictionary+Extensions.swift
//  DogSDApp
//
//  Created by Andre Lemos on 11/06/24.
//

import Foundation

extension Dictionary {
    
    func decode<T: Decodable>() -> T? {
        guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else {
            return nil
        }
        return try? JSONDecoder().decode(T.self, from: data)
    }
}
