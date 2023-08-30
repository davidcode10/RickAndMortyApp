//
//  NavigationBarDetailView.swift
//  RickAndMortyApp
//
//  Created by David Santiago on 29/8/23.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTY
    
    @EnvironmentObject var selectCharacterManager: SelectedCharacterManager
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    selectCharacterManager.selectedCharacter = nil
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            } //: BUTTON
            
            Spacer()
            
        } //: HSTACK
    }
}

// MARK: - PREVIEW

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(SelectedCharacterManager())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
