//
//  RickAndMortyAppApp.swift
//  RickAndMortyApp
//
//  Created by David Santiago on 21/8/23.
//

import SwiftUI

@main
struct RickAndMortyAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(SelectedCharacterManager())
        }
    }
}
