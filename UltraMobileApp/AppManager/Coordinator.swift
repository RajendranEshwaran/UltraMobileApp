//
//  Coordinator.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/18/25.
//

import Foundation
import SwiftUI

enum AppPages: String, Hashable {
    case welcomePage
    case loginPage
    case homePage
    case emptyView
}

enum AppSheets: String, Identifiable {
    case forgotPasswordSheet
    case changePasswordSheet
    
    var id: String {
        self.rawValue
    }
}

enum AppFullCovers: String, Identifiable {
    case welcomeFullCover
    case loginFullCover
    case homePage
    
    var id: String {
        self.rawValue
    }
}


class Coordinator: ObservableObject {
    @Published var currentScreen: AppPages? = .welcomePage
    @Published var currentSheet: AppSheets?
    @Published var currentFullCover: AppFullCovers?
    @Published var navigationPath = NavigationPath()
    
    func rootToPop() {
        navigationPath.removeLast(navigationPath.count)
    }
    
    func pop() {
        navigationPath.removeLast()
    }
    
    func pushAppView(_ view: AppPages) {
        navigationPath.append(view)
    }
    
    func presentAppView(_ view: AppPages) {
        navigationPath.append(view)
    }
    
    func presentAppSheet(_ sheet: AppSheets) {
        navigationPath.append(sheet)
    }
    
    func presentFullCover(_ fullScreen: AppFullCovers) {
        self.currentFullCover = fullScreen
    }
    
    func dismissSheet() {
        self.currentSheet = nil
    }
    
    func dismissView() {
        self.currentScreen = nil
    }
    
    func dismissFullCoverView() {
        self.currentFullCover = nil
    }
    
    @ViewBuilder
    func currentAppView(view: AppPages) -> some View {
        switch view {
        case .welcomePage: WelcomeView()
        case .loginPage: LoginView()
        case .homePage : HomeView()
        case .emptyView: EmptyView()
        }
    }
    
    @ViewBuilder
    func currentAppSheetView(sheet: AppSheets) -> some View {
        switch sheet {
        case .forgotPasswordSheet:Text("forgotPasswordSheet")
        case .changePasswordSheet:Text("changePasswordSheet")
        }
    }
    
    @ViewBuilder
    func currentAppFullCoverView(fullcover: AppFullCovers) -> some View {
        switch fullcover {
        case .welcomeFullCover: Text("welcomeFullCover")
        case .loginFullCover:Text("loginFullCover")
        case .homePage: LandingView()
        }
    }
}
