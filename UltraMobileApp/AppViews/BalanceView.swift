//
//  BalanceView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/20/25.
//

import SwiftUI

struct BalanceView: View {
 
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                ScrollView {
                    VStack {
                        ForEach(0..<100) { index in
                            Text("\(index)").foregroundStyle(.white)
                        }
                    }
                }
            }.ignoresSafeArea()
            .navigationBarTitle(Text("Adjustment"), displayMode: .inline)
            .navigationBarItems(leading: NavigationLink(destination: Text("Destination")) {
                      Image(systemName: "person.crop.circle.fill")
                        .font(.title)
                    })
        }
    }
}

#Preview {
    BalanceView()
}
