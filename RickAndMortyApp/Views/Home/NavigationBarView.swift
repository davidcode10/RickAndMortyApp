//
//  NavigationBarView.swift
//  RickAndMortyApp
//
//  Created by David Santiago on 29/8/23.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTIES
    
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text("Rick & Morty")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
                .opacity(isAnimating ? 1 : 0)
                .offset(x: 0, y: isAnimating ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimating.toggle()
                    }
                }
        } //: HSTACK
        .frame(maxWidth: .infinity)
    }
}

// MARK: - PREVIEW

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
