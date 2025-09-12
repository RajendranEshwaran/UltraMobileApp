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
        let titleIcon: String
        let isTitleIconVisible: Bool
        let leftBarItems: LeftBarItemsView
        let rightBarItems: RightBarItemsView
        let content: Content
        
    init(title: String, titleIcon: String, isTitleIconVisible: Bool,leftBarItems: LeftBarItemsView, rightBarItems:RightBarItemsView, @ViewBuilder content: () -> Content) {
            self.title = title
            self.titleIcon = titleIcon
            self.isTitleIconVisible = isTitleIconVisible
            self.leftBarItems = leftBarItems
            self.rightBarItems = rightBarItems
            self.content = content()
        }

        var body: some View {
            VStack(spacing: 0) {
                HStack {
                    // Left Navigation BarItems are handled here
                    self.leftBarItems
                    Spacer()
                    
                    // Center Title / Title Icon BarItems are handled here
                    
                    if !isTitleIconVisible {
                        Text(title)
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding(.top, 50)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    if isTitleIconVisible {
                        Image(titleIcon)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 60)
                            .padding(.top, 50)
                        Spacer()
                    }
                    
                    // Right Navigation BarItems are handled here
                    self.rightBarItems
                }
                content // The screen's content
               // Spacer() // Pushes content to the top if needed
            }
            .navigationBarHidden(true) // Hide the default navigation bar
        }
    }

struct RightBarItemsView: View {
    let isRightBarItemsVisible: Bool
    let titleIcon: String
    var body: some View {
        HStack {
            if isRightBarItemsVisible {
                Button(action: { /* Back action */ }) {
                    Image(systemName: titleIcon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .frame(width: 20, height: 20)
                        .padding(.top, 50)
                }
            }
        }
    }
}

struct LeftBarItemsView: View {
    let isLeftBarItemsVisible: Bool
    let titleIcon: String
    var body: some View {
        HStack {
            if isLeftBarItemsVisible {
                Button(action: { /* Back action */ }) {
                    Image(systemName: titleIcon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .frame(width: 20, height: 20)
                        .padding(.top, 50)
                }
            }
        }
    }
}
