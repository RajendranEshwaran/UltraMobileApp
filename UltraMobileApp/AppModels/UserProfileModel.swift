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
    let sectionItemIcon: [String]
    
    static let accountSectionInfo: [AccountModel] = [
        AccountModel(section: "My Monthly Service", sectionItem: ["Auto Renew", "Manange My Family"], sectionItemIcon: ["arrow.trianglehead.2.counterclockwise", "person.3"]),
        AccountModel(section: "My Account", sectionItem: ["My Details", "Password & Security", "Payment Method","Transaction History", "INTL Call History"], sectionItemIcon: ["person.crop.circle","lock.shield.fill", "creditcard.and.123", "dollarsign.arrow.trianglehead.counterclockwise.rotate.90", "network"]),
        AccountModel(section: "Preference", sectionItem: ["Communication Preference", "Wifi Calling & Text Setup", "Color Theme", "Face ID(biometrics"], sectionItemIcon: ["apps.iphone","wifi", "target", "faceid"]),
        AccountModel(section: "Support", sectionItem: ["Change Device", "Order Replacement Sim","Activate Replacement Sim"], sectionItemIcon: ["iphone.app.switcher", "simcard", "simcard.2",]),//bolt.badge.checkmark
        AccountModel(section: "Other", sectionItem: ["Refer a Friend", "Store Locator", "Rate Checker", "Privacy Policy", "Logout"], sectionItemIcon: ["message.badge.circle", "mappin.and.ellipse.circle", "checkmark.seal.text.page", "note.text", "power.circle"])
    ]
    
}

struct ManageBalanceModel: Identifiable {
    let id = UUID()
    let section: String
    let sectionItem: [String]
    let sectionItemIcon: [String]
    
    static let manageBalanceSectionInfo: [ManageBalanceModel] = [
        //ManageBalanceModel(section: <#T##String#>, sectionItem: <#T##[String]#>, sectionItemIcon: <#T##[String]#>)
    ]
}
