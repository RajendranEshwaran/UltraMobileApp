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
        ZStack {
            Color.black
            VStack {
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
                   
                NavigationStack {
                    List {
                        ForEach(AccountModel.accountSectionInfo) { section in
                            Section {
                                Text(section.section)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 20, weight: .bold, design: .rounded))
                            }
                            .listRowBackground(Color.black)
                            .padding(.bottom, 10)
                            ForEach(section.sectionItem, id:\.self){ item in
                                VStack(alignment: .leading) {
                                    Text(item)
                                        .foregroundStyle(.white)
                                        .font(.system(size: 18, weight: .regular, design: .rounded))
                                      //  .padding(10)
                                    Divider().overlay(Color.white)//.padding(10)
                                }
                            }
                        }
                        .listRowBackground(Color.black)
                    }.listStyle(.plain)
                    .background(Color.black)
                }
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    AccountView()
}
