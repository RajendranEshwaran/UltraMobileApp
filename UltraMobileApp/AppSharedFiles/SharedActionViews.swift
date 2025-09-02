//
//  SharedActionViews.swift
//  UltraMobileApp
//
//  Created by RajayGoms on 9/2/25.
//

import SwiftUI

struct buttonViewWithAction: View {
    var buttonText: String = "Login"
    var buttonWidth: CGFloat = 300
    var buttonHeight: CGFloat = 60
    var buttonIcon: String = ""
    let action: () -> Void
    var body: some View {
            Button(action: action, label: {
                HStack{
                    Spacer()
                    Text(buttonText)
                        .foregroundStyle(.black)
                        .font(.system(.callout, weight: .bold))
                        .padding(.all, 20)
                    
                    Image(systemName: buttonIcon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                    Spacer()
                }
            })
        }
}
