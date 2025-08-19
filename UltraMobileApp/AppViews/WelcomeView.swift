//
//  WelcomeView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/18/25.
//

import SwiftUI

struct WelcomeView: View {
    @State private var phoneNumber = "Phone Number"
    var body: some View {
        ZStack(alignment: .center) {
            Color.purple
            LinearGradient(colors: [.purple, .black], startPoint: .top, endPoint: .bottom)
            Image("quote1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(0.05)
            VStack {
                Text(AppGeneric.welcome)
                    .font(.system(size: 30, weight: .semibold, design: .rounded))
                    .foregroundStyle(.white)
                    .padding()
                Text(AppGeneric.connecting)
                    .font(.system(size: 20, weight: .regular, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                    .padding()
                
                Button(action: {}, label: {
                    Text("Login")
                        .font(.system(size: 30, weight: .semibold, design: .rounded))
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 300, height: 60)
                }).frame(width: 300, height: 60, alignment: .center)
                    .background(.button1)
                    .cornerRadius(20)
                
                Rectangle()
                    .fill(.gray)
                    .frame(width: 300, height: 5)
                    .padding()
                
                Text(AppGeneric.loginText1)
                    .font(.system(size: 22, weight: .semibold, design: .rounded))
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .foregroundStyle(.white)
                    .frame(width: 300, height: 60)
                    .padding()
                    
                Text(AppGeneric.loginText2)
                    .font(.system(size: 20, weight: .regular, design: .rounded))
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .foregroundStyle(.white)
                    .frame(width: 300, height: 60)
               
                
                TextField("$phoneNumber", text: $phoneNumber)
                              .padding(15)
                              .background(
                                Color.black
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 7)
                                            .stroke(.secondary.opacity(0.5), lineWidth: 1)
                                            .strokeBorder()
                                    )
                              )
                            .foregroundStyle(.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 7))
                            .frame(width: 300)
                            
                Button(action: {}, label: {
                    Text("Send Login Link")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundStyle(.black)
                        .padding()
                }).frame(width: 300, height: 60, alignment: .center)
                    .background()
                    .cornerRadius(20)
                    .padding()
          
                HStack {
                    PlanView(title: AppGeneric.activatePlan, icon: "bolt.ring.closed")
                        .padding(.horizontal, 50)
                    PlanView(title: AppGeneric.shopOnline, icon: "cart")
                        .padding(.horizontal, 50)
                    PlanView(title: AppGeneric.findStore, icon: "storefront")
                        .padding(.horizontal, 50)
                }.frame(height: 100)
                    .padding(.top, 30)
                    PrivacyTermsView(privacyText: ["By using Ultra Mobile's App agree to the","privacy policy","and","terms"])
                        .lineLimit(2)
                        .frame(width: 300, height: 20)
                        
        
            }.offset(x: -40)
        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    WelcomeView()
}
