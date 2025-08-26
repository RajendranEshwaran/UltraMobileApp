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
