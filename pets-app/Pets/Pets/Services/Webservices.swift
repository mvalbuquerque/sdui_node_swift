//
//  Webservices.swift
//  Pets
//
//  Created by Marcos Vinicius Albuquerque on 19/04/23.
//

import Foundation

enum NetworkError: Error {
    case invalidUrl
    case invalidServerResponse
}

class Webservice {
    
    func load(resource: String) async throws -> ScreenModel {
            
        guard let url = URL(string: resource) else {
            throw NetworkError.invalidUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
                  throw NetworkError.invalidServerResponse
              }
        
        return try JSONDecoder().decode(ScreenModel.self, from: data)
    }
    
}
