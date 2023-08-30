//
//  CharacterRowView.swift
//  RickAndMortyApp
//
//  Created by David Santiago on 30/8/23.
//

import SwiftUI

struct CharacterRow: View {
    let character: Character
    
    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: URL(string: character.image)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(character.name)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 8)
                Text(character.status)
                    .font(.subheadline)
                    .foregroundColor(character.status == "Alive" ? .green : .red)
                Text(character.species)
                    .font(.subheadline)
                    .foregroundColor(.white)
                Text(character.location.name)
                    .font(.caption)
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color("CharacterStackInfoColor"))
        .cornerRadius(12)
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(
            character:
                Character(
                    id: 1,
                    name: "Michael Jenkins",
                    status: "Dead",
                    species: "Human",
                    type: "",
                    gender: "Male",
                    origin: Origin(name: "unknown", url: ""),
                    location: Location(name: "Interdimensional Cable", url: ""),
                    image: "https://rickandmortyapi.com/api/character/avatar/223.jpeg",
                    episode:  [""],
                    url: "",
                    created: "2017-12-30T14:44:51.373Z"
                )
        )
        .environmentObject(SelectedCharacterManager())
    }
}
