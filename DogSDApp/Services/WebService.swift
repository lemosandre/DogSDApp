//
//  WebService.swift
//  DogSDApp
//
//  Created by Andre Lemos on 16/05/24.
//

import Foundation

enum NetworkError: Error {
    case invalidUrl
    case invalidServerResponse
}
class WebService {
    
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
