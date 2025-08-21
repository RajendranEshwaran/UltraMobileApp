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
                .frame(maxWidth: 200, maxHeight: .infinity, alignment: .topLeading)
                .padding(.top, 30)
            
            //MARK:- User profile short info panel
            HStack {
                Text("Hi, \(userInfo.userFirstName)")
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                
                Spacer()
                Text(userInfo.userPhoneNumer.formatPhoneNumber())
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                
            }.frame(maxWidth: .infinity, minHeight: 100, maxHeight: .infinity, alignment: .topLeading)
                .padding(.top, 180)
            
            
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
