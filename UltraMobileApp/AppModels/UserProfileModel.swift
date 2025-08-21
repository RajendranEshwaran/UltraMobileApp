//
//  UserProfileModel.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/21/25.
//

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
