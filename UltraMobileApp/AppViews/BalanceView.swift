//
//  BalanceView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/20/25.
//

import SwiftUI
import Foundation

struct BalanceView: View {
    let today: Date = Date()
        var tomorrow: Date {
            let calendar = Calendar.current
            return calendar.date(byAdding: .day, value: 1, to: today) ?? today
        }
    
    let screenSize = UIScreen.main.bounds.size
    var body: some View {
            SharedNavigationBar(title: "Manage Balance", titleIcon: "", isTitleIconVisible: false, leftBarItems: LeftBarItemsView(isLeftBarItemsVisible: false, titleIcon: "arrow.left"), rightBarItems: RightBarItemsView(isRightBarItemsVisible: false, titleIcon: "arrow.right"), content: {
                ZStack {
                    Color.black
                    VStack {
                        List {
                            // Section 1 Header
                           Section {
                               Text("Add More to your current balance")
                                   .font(.system(size: 20, weight: .bold))
                                    .foregroundStyle(.white)
                            }.listRowBackground(Color.black)
                            
                            // Section 2 5g
                            Section {
                                RemainingDataCardView(actionIcon: "chevron.down", isExpand: true, action: {
                                    
                                }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                    .background(.panel).opacity(0.85)
                            }.listRowBackground(Color.black)
                            
                            // section 3
                            Section {
                                RemainingDataCardView(cardIcon: "wallet.bifold", subDataOne: "Wallet",subDataTwo: "$0.00", isExpand: true, action: {
                                    
                                }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                    .background(.panel).opacity(0.85)
                            }.listRowBackground(Color.black)
                            
                            // Section 4
                            Section {
                                RemainingDataCardView(cardIcon: "arrow.up.message", subDataOne: "INTL Credit",subDataTwo: "$10.00", isExpand: true, lineLimit: 1, action: {
                                    
                                }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                    .background(.panel).opacity(0.85)
                            }.listRowBackground(Color.black)
                            
                            // Section 5
                            Section {
                                RemainingDataCardView(cardIcon: "airplane.circle", subDataOne: "INTL Roaming Credit",subDataTwo: "$100.00", isExpand: true, lineLimit: 3, action: {
                                    
                                }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                    .background(.panel).opacity(0.85)
                            }.listRowBackground(Color.black)
                            
                            // Section 6
                            Section {
                                RemainingDataCardView(cardIcon: "airplane.circle", subDataOne: "Go Roam Mexico Data Pass",subDataTwo: "None", isExpand: true, lineLimit: 5, action: {
                                    
                                }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                    .background(.panel).opacity(0.85)
                            }.listRowBackground(Color.black)
                            
                            // Section 7
                            Section {
                                RemainingDataCardView(cardIcon: "globe", subDataOne: "Globe Unlimited",subDataTwo: "None", isExpand: true, action: {
                                    
                                }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                    .background(.panel).opacity(0.85)
                            }.listRowBackground(Color.black)
                            
                            // Section 8
                            Section {
                                RemainingDataCardView(cardIcon: "u.circle", subDataOne: "uTalk",subDataTwo: "$10.00", isExpand: true, action: {
                                    
                                }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                    .background(.panel).opacity(0.85)
                            }.listRowBackground(Color.black)
                        
                        }.listStyle(.plain)
                    }
                }
                    
            }).background(Color.black)
    }
}

#Preview {
    BalanceView()
}
