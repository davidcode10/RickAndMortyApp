//
//  CharacterDetailView.swift
//  RickAndMortyApp
//
//  Created by David Santiago on 28/8/23.
//

import SwiftUI

struct CharacterDetailView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var selectCharacterManager: SelectedCharacterManager
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication
                    .shared
                    .connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .first?.keyWindow?.safeAreaInsets.top
                )
            
            // MARK: - IMAGE SECTION
            
            AsyncImage(url: URL(string: selectCharacterManager.selectedCharacter?.image ?? "https://rickandmortyapi.com/api/character/avatar/2.jpeg")) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            
            // MARK: - CHARACTER DETAILS SECTION
            
            Text(selectCharacterManager.selectedCharacter?.name ?? "Michael Jenkins")
                .font(.custom("HelveticaNeue-Bold", size: 24))
                .foregroundColor(.white)
                .padding()
            
            Divider()
                .background(Color.white)
                .padding(.vertical)
            
            VStack(spacing: 16) {
                CharacterTextView(title: "Status", info: selectCharacterManager.selectedCharacter?.status ?? "Unknown")
                    .padding(.bottom)
                
                CharacterTextView(title: "Species", info: selectCharacterManager.selectedCharacter?.species ?? "Unknown")
                    .padding(.bottom)
                
                CharacterTextView(title: "Type", info: selectCharacterManager.selectedCharacter?.type == "" ? "Unknown" : selectCharacterManager.selectedCharacter?.type ?? "Unknown")
                    .padding(.bottom)
                
                CharacterTextView(title: "Gender", info: selectCharacterManager.selectedCharacter?.gender ?? "Unknown")
                    .padding(.bottom)
                
                CharacterTextView(title: "Origin", info: selectCharacterManager.selectedCharacter?.origin.name ?? "Unknown")
                    .padding(.bottom)
            } //: VSTACK
            .padding(.horizontal)
            
            Spacer()
        } //: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(Color.black)
    }
}

// MARK: - PREVIEW

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView()
            .environmentObject(SelectedCharacterManager())
    }
}
