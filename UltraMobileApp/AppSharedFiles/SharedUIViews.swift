//
//  SharedUIViews.swift
//  UltraMobileApp
//
//  Created by RajayGoms on 8/26/25.
//

import Foundation
import SwiftUI

// leading alignment
struct CardItemTitleView: View {
    var titleName: String
    var titleSize: CGFloat = 30
    var titleWeight: Font.Weight = .bold
    var titleDesign: Font.Design = .rounded
    var titleFontColor: Color = .white
    var titleAlignment: Alignment = .leading
    
    var body: some View {
        Text(titleName)
            .font(.system(size: titleSize, weight: titleWeight, design: titleDesign))
            .frame(minWidth: 0,  maxWidth: .infinity, alignment: titleAlignment)
            .foregroundStyle(titleFontColor)
    }
}

struct CardItemInformationView: View {
    var titleInfoName: String
    var titleInfoSize: CGFloat = 20
    var titleInfoWeight: Font.Weight = .bold
    var titleInfoDesign: Font.Design = .rounded
    var titleInfoFontColor: Color = .white
    var titleInfoAlignment: Alignment = .leading
    var body: some View {
        Text(titleInfoName)
            .font(.system(size: titleInfoSize, weight: titleInfoWeight, design: titleInfoDesign))
            .frame(minWidth: 0,  maxWidth: .infinity, alignment: titleInfoAlignment)
            .foregroundStyle(titleInfoFontColor)
    }
}

struct CardItemStaticTitleView<Content: View>: View {
    let content: Content
    var titleName: String
    var titleSize: CGFloat = 30
    var titleWeight: Font.Weight = .bold
    var titleDesign: Font.Design = .rounded
    var titleFontColor: Color = .white
    var titleAlignment: Alignment = .leading
    
    init(@ViewBuilder content: @escaping () -> Content, titleName: String, titleSize: CGFloat, titleWeight: Font.Weight, titleDesign: Font.Design, titleFontColor: Color, titleAlignment: Alignment) {
        self.titleName = titleName
        self.titleSize = titleSize
        self.titleWeight = titleWeight
        self.titleDesign = titleDesign
        self.titleFontColor = titleFontColor
        self.titleAlignment = titleAlignment
        self.content = content()
    }
    var body: some View {
        Text(titleName)
            .font(.system(size: titleSize, weight: titleWeight, design: titleDesign))
            .frame(minWidth: 0,  maxWidth: .infinity, alignment: titleAlignment)
            .foregroundStyle(titleFontColor)
    }
}
