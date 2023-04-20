//
//  Dictionary+Extensions.swift
//  Pets
//
//  Created by Marcos Vinicius Albuquerque on 19/04/23.
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
