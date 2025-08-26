//
//  HomeView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/20/25.
//

import SwiftUI

struct HomeView: View {
    @State var items = [1]
    var body: some View {
           
        VStack {
            List {
                Section {
                    InformationCardView {
                        HStack() {
                            VStack() {
                                CardItemTitleView(titleName: "4GB")
                                
                                CardItemTitleView(titleName: "Single Month", titleSize: 20, titleWeight: .regular)
                                
                                CardItemInformationView(titleInfoName: "$19/Month", titleInfoSize: 20)
                            }
                            Spacer()
                            VStack {
                                CardItemTitleView(titleName: "4GB", titleAlignment: .trailing)
                                
                                CardItemTitleView(titleName: "Single Month", titleSize: 20, titleWeight: .regular, titleAlignment: .trailing)
                                
                                CardItemInformationView(titleInfoName: "$19/Month", titleInfoSize: 20, titleInfoAlignment: .trailing)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .background(.panel).opacity(0.85)
                    
                } header: {
                   
                }
                .listRowBackground(Color.black)
            }
            .listStyle(.plain)
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding(.top, 250)
    }
}

#Preview {
    HomeView()
}

