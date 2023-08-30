//
//  ContentView.swift
//  RickAndMortyApp
//
//  Created by David Santiago on 21/8/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @StateObject private var viewModel = CharactersViewModel()
    @EnvironmentObject var selectCharacterManager: SelectedCharacterManager
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            if selectCharacterManager.selectedCharacter != nil {
                CharacterDetailView()
            } else {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.bottom)
                        .padding(.top, UIApplication
                            .shared
                            .connectedScenes
                            .compactMap { $0 as? UIWindowScene }
                            .first?.keyWindow?.safeAreaInsets.top
                        )
                        .background(Color.white)
                    
                    ScrollView(showsIndicators: false) {
                        ForEach(viewModel.characters) { character in
                            CharacterRow(character: character)
                                .onTapGesture {
                                    withAnimation(.easeOut) {
                                        selectCharacterManager.selectedCharacter = character
                                    }
                                }
                        }
                        
                        FooterView()
                    }
                    .padding()
                }
                .background(Color.black.ignoresSafeArea())
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}


// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SelectedCharacterManager())
    }
}
