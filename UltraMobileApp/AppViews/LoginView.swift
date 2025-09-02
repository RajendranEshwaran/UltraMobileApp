//
//  LoginView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/18/25.
//

import SwiftUI

struct LoginView: View {
    @State private var yourPhoneNumber = "9877787888"
    @State private var password = ""
    @EnvironmentObject private var coordinator: Coordinator
    var body: some View {
        ZStack(alignment: .center) {
            Color.purple
            LinearGradient(colors: [.purple, .black], startPoint: .top, endPoint: .bottom)
            Image("quote1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(0.05)
            VStack {
                WelcomePanelView()
                HStack {
                    VStack(alignment: .leading) {
                        Text(AppGeneric.phonenumber)
                            .foregroundStyle(.white)
                        
                        TextField("", text: $yourPhoneNumber)
                            .textFieldStyle(.automatic)
                            .frame(width: 200)
                            .background(.black)
                            .foregroundStyle(.white)
                            .onChange(of: yourPhoneNumber){
                                if !yourPhoneNumber.isEmpty {
                                    yourPhoneNumber = yourPhoneNumber.formatPhoneNumber()
                                }
                            }
                    }
                    
                    Button(action: {}, label: {
                        Image(systemName: "faceid")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundStyle(.white)
                    })
                }.frame(width: 300, height: 70)
                .background(.black).opacity(1)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
                PasswordToggleView()
                    .foregroundStyle(.white)
                    .frame(width: 300, height: 70)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Button(action: {}, label: {
                    Text("Forgot Password?")
                        .foregroundStyle(.white)
                        .font(.system(.callout, weight: .bold))
                        .padding()
                        
                })

                buttonViewWithAction(buttonText: "Login", buttonWidth: 300, buttonHeight: 60, action: {
                    coordinator.presentFullCover(.homePage)
                })
                .frame(width: 300, height: 60)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.bottom, 50)
                
                PrivacyTermsView(privacyText: ["By using Ultra Mobile's App agree to the","privacy policy","and","terms"])
                    .lineLimit(2)
                    .frame(width: 300, height: 20)
                    
            }.offset(x: -40)
        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    LoginView()
}
