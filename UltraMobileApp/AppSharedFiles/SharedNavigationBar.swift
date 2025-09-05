//
//  SharedNavigationBar.swift
//  UltraMobileApp
//
//  Created by RajayGoms on 9/5/25.
//

import Foundation
import SwiftUI

struct SharedNavigationBar<Content: View>: View {
        let title: String
        let showBackButton: Bool
        let content: Content
        
        init(title: String, showBackButton: Bool, @ViewBuilder content: () -> Content) {
            self.title = title
            self.showBackButton = showBackButton
            self.content = content()
        }

        var body: some View {
            VStack(spacing: 0) {
                HStack {
                    if showBackButton {
                        Button(action: { /* Back action */ }) {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                                .padding()
                        }
                    }
                    Spacer()
                    Text(title)
                        .foregroundColor(.white)
                        .font(.headline)
                    Spacer()
                }
                content // The screen's content
                Spacer() // Pushes content to the top if needed
            }
            .navigationBarHidden(true) // Hide the default navigation bar
        }
    }

struct customBar: View {
    let isBackButtonVisible: Bool
    let title: String
    var body: some View {
        HStack {
            Button(action: { /* Back action */ }) {
                Image(systemName: "arrow.left")
                    .foregroundColor(.white)
                    .padding()
            }
            Spacer()
            Text(title)
                .foregroundColor(.white)
                .font(.headline)
            Spacer()
        }
    }
}
