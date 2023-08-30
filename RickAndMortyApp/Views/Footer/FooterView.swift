//
//  FooterView.swift
//  RickAndMortyApp
//
//  Created by David Santiago on 30/8/23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Text("Copyright © David Edson \nAll right reserved")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .background(Color.black)
    }
}
