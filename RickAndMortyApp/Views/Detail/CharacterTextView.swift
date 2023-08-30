//
//  CharacterTextView.swift
//  RickAndMortyApp
//
//  Created by David Santiago on 28/8/23.
//

import SwiftUI

struct CharacterTextView: View {
    // MARK: - PROPERTIES
    
    let title: String
    let info: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(title)
                .font(.footnote)
                .foregroundColor(.white)
            
            Spacer()
            
            Text(info)
                .font(.subheadline)
                .foregroundColor(.white)
        } //: HSTACK
    }
}

// MARK: - PREVIEW

struct CharacterTextView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterTextView(
            title: "Status",
            info: "Alive"
        )
        .background(Color.black)
    }
}
