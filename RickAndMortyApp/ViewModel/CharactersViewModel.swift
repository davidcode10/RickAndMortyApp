//
//  CharactersViewModel.swift
//  RickAndMortyApp
//
//  Created by David Santiago on 29/8/23.
//

import SwiftUI

class CharactersViewModel: ObservableObject {
    @Published var characters: [Character] = []
    
    init() {
        fetchCharacters()
    }
    
    func fetchCharacters() {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error fetching data: \(error)")
                return
            }
            
            if let data = data {
                do {
                    let response = try JSONDecoder().decode(APIResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.characters = response.results
                    }
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }
        }.resume()
    }
}


struct APIResponse: Codable {
    let results: [Character]
}
