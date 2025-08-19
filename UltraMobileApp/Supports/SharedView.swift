//
//  SharedView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/19/25.
//
import SwiftUI

struct PlanView: View {
    let title: String
    let icon: String
    
    var body: some View {
        Image(systemName: icon)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(.white)
            .frame(width: 25, height: 25)
            .overlay(alignment: .top) {
                Text(title)
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
                    .font(.callout)
                    .foregroundStyle(.white)
                    .frame(width: 200, height: 40)
                    .padding(.vertical, 20)
            }
    }
}

var privacyAndTermsAttributedText: AttributedString {
        var attributedString = AttributedString("By continuing, you agree to our Terms of Service and acknowledge that you have read our Privacy Policy.")

        if let termsRange = attributedString.range(of: "Terms of Service") {
            attributedString[termsRange].link = URL(string: "https://www.example.com/terms")
        }

        if let privacyRange = attributedString.range(of: "Privacy Policy") {
            attributedString[privacyRange].link = URL(string: "https://www.example.com/privacy")
        }

        return attributedString
    }

struct PrivacyTermsView: View {
    let privacyText: [String]
    var body: some View {
        Text(privacyText[0])
            .font(.system(size: 15))
            .foregroundStyle(.white)
        
        HStack {
            Link(destination: URL(string: "https:\\www.apple.com")!, label: {
                Text(privacyText[1])
                    .underline()
                    .font(.system(size: 15))
                    .foregroundStyle(.white)
            })
            
            Text(privacyText[2])
                .font(.system(size: 15))
                .foregroundStyle(.white)
            
            Link(destination: URL(string: "https:\\www.google.com")!, label: {
                Text(privacyText[3])
                    .underline()
                    .font(.system(size: 15))
                    .foregroundStyle(.white)
            })
        }
    }
}

struct WelcomePanelView: View {
    var body: some View {
        Text(AppGeneric.welcome)
            .font(.system(size: 30, weight: .semibold, design: .rounded))
            .foregroundStyle(.white)
            .padding()
        Text(AppGeneric.connecting)
            .font(.system(size: 20, weight: .regular, design: .rounded))
            .multilineTextAlignment(.center)
            .foregroundStyle(.white)
            .padding()
    }
}

struct PasswordToggleView: View {
        @State private var password: String = ""
        @State private var isShowingPassword: Bool = false

        var body: some View {
            HStack {
                Group {
                    if isShowingPassword {
                        TextField("Password", text: $password, prompt: Text("Password"))
                    } else {
                        SecureField("Password", text: $password)
                    }
                }
                .foregroundStyle(.white)
                .textFieldStyle(.plain)
                .padding(15)
                .background(
                  Color.black
                      .overlay(
                          RoundedRectangle(cornerRadius: 7)
                              .stroke(.secondary.opacity(0.5), lineWidth: 1)
                              
                      )
                )
                Button(action: {
                    isShowingPassword.toggle()
                }) {
                    Image(systemName: isShowingPassword ? "eye.slash" : "eye")
                        .foregroundColor(.white)
                        .foregroundStyle(.white)
                }
            }
            .padding()
        }
    }
