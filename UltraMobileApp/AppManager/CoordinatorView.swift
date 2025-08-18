//
//  CoordinatorView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/18/25.
//

import SwiftUI

struct CoordinatorView: View {
    @StateObject private var coordinator = Coordinator()
    var body: some View {
        NavigationStack(path: $coordinator.navigationPath) {
            coordinator.currentAppView(view: coordinator.currentScreen ?? .emptyView)
                .navigationDestination(for: AppPages.self) { view in
                    coordinator.currentAppView(view: view)
                }
                .sheet(item: $coordinator.currentSheet) { sheet in
                    coordinator.currentAppSheetView(sheet: sheet)
                }
                .fullScreenCover(item: $coordinator.currentFullCover) { fullcover in
                    coordinator.currentAppFullCoverView(fullcover: fullcover)
                }
        }.environmentObject(coordinator)
    }
}

#Preview {
    CoordinatorView()
}
