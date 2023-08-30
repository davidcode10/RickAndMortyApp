//
//  SelectCharacter.swift
//  RickAndMortyApp
//
//  Created by David Santiago on 28/8/23.
//

import Foundation

class SelectedCharacterManager: ObservableObject {
    @Published var selectedCharacter: Character? = nil
}
