//
//  SharedCardViews.swift
//  UltraMobileApp
//
//  Created by RajayGoms on 8/26/25.
//

import Foundation
import SwiftUI

struct InformationCardView<Content: View>: View {
    let content: Content
    
    var cornerRadius: CGFloat = 10
    var backgroundColor: Color = .black
    var padding: CGFloat = 16
    var fontColor: Color = .white
    var fontSize: Font = .system(size: 25, weight: .bold, design: .rounded)
    var alignment: Alignment = .leading
    init(@ViewBuilder content: @escaping () -> Content){
        self.content = content()
    }
    
    var body: some View {
        content
    }
}


struct PlanDetailCardView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content
    }
}

struct RemainingDataCardView: View {
    var cardIcon: String = "chart.bar"
    var subDataOne: String = "5G . 4G . LTE Data"
    var subDataTwo: String = "0.00 GB Left"
    var actionIcon: String = "plus"
    var isExpand: Bool = false
    let action: () -> Void
    var body: some View {
        HStack {
            Image(systemName: cardIcon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30, alignment: .leading)
                .foregroundStyle(.white)
            
            Text(subDataOne)
                .frame(width: 80)
                .font(.system(size: 17, weight: .regular, design: .rounded))
                .foregroundStyle(.white)
                .lineLimit(2)
            
            Spacer()
            
            Text(subDataTwo)
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .foregroundStyle(.white)
                .padding()
            
            Divider().overlay(Color.gray).padding()
            
            Button(action: action) {
                Image(systemName: actionIcon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    
                    .foregroundStyle(.white)
            }.buttonStyle(PlainButtonStyle())
        }
    }
}
