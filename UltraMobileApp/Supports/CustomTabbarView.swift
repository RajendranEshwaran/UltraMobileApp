//
//  CustomTabbarView.swift
//  UltraMobileApp
//
//  Created by RajayGoms on 8/20/25.
//

import SwiftUI

struct CustomTabbarView: View {
    @Binding var selectedTab: Int
    let allTab: [TabbarItem]
    var body: some View {
        ZStack{
            HStack {
                //                RoundedRectangle(cornerRadius: 18)
                //                    .fill(Color.white)
                //                    .shadow(color: Color.gray.opacity(0.2), radius: 8, x: 0, y: -2)
                
                ForEach(0..<allTab.count, id: \.self) { index in
                    Button(action: {
                        withAnimation{
                            selectedTab = index
                        }
                    }, label: {
                        VStack {
                            Image(systemName: allTab[index].tabIcon)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundStyle(.white)
                                .frame(width: 25, height: 25)
                            
                            Text(allTab[index].tabItem)
                                .font(.callout)
                                .foregroundStyle(.white)
                        }.frame(maxWidth: .infinity)
                            .padding(.top, 10)
                    })
                }
            }
            GeometryReader { geometry in
                let tabWidth = geometry.size.width / CGFloat(allTab.count)
                let indicatorWidth: CGFloat = 40
                let indicatorOffset = (tabWidth * CGFloat(selectedTab)) + (tabWidth - indicatorWidth) / 2
                
                Color.purple
                    .frame(width: indicatorWidth, height: 4)
                    .cornerRadius(2)
                    .offset(x: indicatorOffset)
                    .animation(.easeInOut(duration: 0.3), value: selectedTab)
            }
            .frame(height: 90)
        }
    }
}

#Preview {
    CustomTabbarView(selectedTab: .constant(0), allTab: [])
}


struct TabbarItem {
    let tabItem: String
    let tabIcon: String
    
    static let tabAllItems: [TabbarItem] = [
        
        TabbarItem(tabItem: "Dashboard", tabIcon: "rectangle.grid.3x3"),
        TabbarItem(tabItem: "Plans", tabIcon: "person"),
        TabbarItem(tabItem: "Balance", tabIcon: "plus"),
        TabbarItem(tabItem: "Account", tabIcon: "gearshape")
    ]
}
