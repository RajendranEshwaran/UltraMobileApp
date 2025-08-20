//
//  LandingView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/14/25.
//

import SwiftUI

struct LandingView: View {
         @State private var selectedTab: Int = 0
         var body: some View {
             let tabItems = TabbarItem.tabAllItems
             ZStack {
                 Color.black.opacity(0.85)
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
                 }.offset(y: 350)
             }.ignoresSafeArea(.all, edges: [.top, .bottom])
                 
         }
    }

#Preview {
    LandingView()
}
