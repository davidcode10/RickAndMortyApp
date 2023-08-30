//
//  CharacterModel.swift
//  RickAndMortyApp
//
//  Created by David Santiago on 28/8/23.
//

import Foundation

struct Character: Codable, Identifiable {
    var id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: Origin
    let location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

struct Origin: Codable {
    let name: String
    let url: String
}

struct Location: Codable {
    let name: String
    let url: String
}
