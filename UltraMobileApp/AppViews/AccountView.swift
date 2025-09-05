//
//  AccountView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/20/25.
//

import SwiftUI

struct AccountView: View {
    let userInfo = UserProfileModel.userProfileInfo
    let groupedItems: [String: [AccountModel]] = [:]
    let groupedSections = Dictionary(grouping: AccountModel.accountSectionInfo) {$0.section }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        VStack {
                            Text("\(userInfo.userFirstName) \(userInfo.userLastName)")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundStyle(.white)
                            Text("\(userInfo.userPhoneNumer.formatPhoneNumber())")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundStyle(.white)
                            Text("Ultra customer since Mar 2018")
                                .font(.system(size: 20, weight: .regular, design: .rounded))
                                .foregroundStyle(.white)
                            Divider().overlay(Color.gray).padding()
                            
                            
                        }.frame(height: 200, alignment: .bottom)
                        
                    // Listing Account Menus and Navigation of the menu items
                        ForEach(AccountModel.accountSectionInfo) { section in
                            Section {
                                Text(section.section)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 20, weight: .bold, design: .rounded))
                            }
                            
                            ForEach(Array(section.sectionItem.enumerated()), id:\.offset){ index, item in
                                NavigationLink {
                                    BalanceView()
                                } label: {
                                    HStack {
                                        Image(systemName: section.sectionItemIcon[index])
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 20, height: 20)
                                            .foregroundStyle(Color.white)
                                        Text(item)
                                            .foregroundStyle(.white)
                                            .font(.system(size: 18, weight: .regular, design: .rounded))
                                            .padding(.vertical, 10)
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 20, height: 20)
                                            .foregroundStyle(Color.white)
                                    }
                                }.foregroundStyle(Color.red, Color.white)
                            }
                        }
                    }
                }
            }.ignoresSafeArea()
        }
    }
}

#Preview {
    AccountView()
}
