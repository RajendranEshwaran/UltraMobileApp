//
//  UserProfileModel.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/21/25.
//

import Foundation

struct UserProfileModel {
    let userFirstName: String
    let userLastName: String
    let userPhoneNumer: String
    
    init(userFirstName: String, userLastName: String, userPhoneNumer: String) {
        self.userFirstName = userFirstName
        self.userLastName = userLastName
        self.userPhoneNumer = userPhoneNumer
    }
    
    static let userProfileInfo = UserProfileModel(userFirstName: "Rajendran", userLastName: "Eshwaran", userPhoneNumer: "987-789-0001")
}

struct AccountModel: Identifiable {
    let id = UUID()
    let section: String
    let sectionItem: [String]
    
    static let accountSectionInfo: [AccountModel] = [
        AccountModel(section: "My Monthly Service", sectionItem: ["Auto Renew", "Manange My Family"]),
        AccountModel(section: "My Account", sectionItem: ["My Details", "Password & Security", "Payment Method","Transaction History", "INTL Call History"]),
        AccountModel(section: "Preference", sectionItem: ["Communication Preference", "Wifi Calling & Text Setup", "Color Theme", "Face ID(biometrics"]),
        AccountModel(section: "Support", sectionItem: ["Change Device", "Order Replacement Sim","Activate Replacement Sim"]),
        AccountModel(section: "Other", sectionItem: ["Refer a Friend", "Store Locator", "Rate Checker", "Privacy Policy", "Logout"])
    ]
    
}

