//
//  LandingView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/14/25.
//

import SwiftUI

struct LandingView: View {
    @State private var selectedTab: Int = 0
    let userInfo = UserProfileModel.userProfileInfo
    var body: some View {
        let tabItems = TabbarItem.tabAllItems
        ZStack {
            Color.black
            //MARK:- App logo
            Image("ultra")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100)
                .position(x: 200, y: 50)
               // .frame(maxWidth: 200, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .padding(.top, 30)
                //.background(Color.yellow)
            
            
            //MARK:- Custom Tabbar bottom panel
            VStack {
                Group {
                    switch selectedTab {
                    case 1: PlansView()
                    case 2: BalanceView()
                    case 3: AccountView()
                    default:HomeView()
                    }
                    CustomTabbarView(selectedTab: $selectedTab, allTab: tabItems)
                        .background(.black)
                        .frame(height: 65)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding(.bottom, 30)
        }.ignoresSafeArea(.all, edges: [.top, .bottom])
        
    }
}

#Preview {
    LandingView()
}
