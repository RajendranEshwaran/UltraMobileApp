//
//  AccountView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/20/25.
//

import SwiftUI

struct AccountView: View {
    let userInfo = UserProfileModel.userProfileInfo
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
                    
                }
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    AccountView()
}
