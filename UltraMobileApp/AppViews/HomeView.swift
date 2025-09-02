//
//  HomeView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/20/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
           
        VStack {
            List {
                // Section 1
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
                    
                }.listRowBackground(Color.black)
                .padding()
                
                // Section 2
                Section {
                    PlanDetailCardView {
                        HStack {
                            
                            VStack {
                                CardItemTitleView(titleName: "Plan Renewal Dates", titleSize: 15, titleWeight: .semibold, titleAlignment: .leading)
                                    .padding(.vertical, 10)
                                CardItemInformationView(titleInfoName: "09/09/2025", titleInfoSize: 20, titleInfoAlignment: .leading)
                                
                            }
                            
                            VStack {
                                CardItemTitleView(titleName: "Auto Renewal Costs", titleSize: 15, titleWeight: .semibold,  titleAlignment: .trailing)
                                    .padding(.vertical, 10)
                                CardItemInformationView(titleInfoName: "$19", titleInfoSize: 20, titleInfoAlignment: .trailing)
                                
                            }
                        }
                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .background(.panel).opacity(0.85)
                }.listRowBackground(Color.black)
                
                // Section 3 Title
                Section {
                    
                } header: {
                    Text("Remaining Data")
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundStyle(.white)
                }.listRowBackground(Color.black)
                
                
                // Section 4 Remaining Data section
                Section {
                    RemainingDataCardView(actionIcon: "chevron.down", isExpand: true, action: {
                       
                   }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        .background(.panel).opacity(0.85)
                }.listRowBackground(Color.black)
                
                
                // Section 5 Title
                Section {
                    
                } header: {
                    Text("Remaining Balance")
                        .font(.system(size: 22, weight: .semibold))
                        //.foregroundStyle(.white)
                }.headerProminence(.increased)
                .listRowBackground(Color.black)
                
                
                // Section 6 Remaining Balance section
                Section {
                    RemainingDataCardView(cardIcon: "wallet.bifold", subDataOne: "Wallet",subDataTwo: "$0.00", isExpand: true, action: {
                       
                   }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        .background(.panel).opacity(0.85)
                }.listRowBackground(Color.black)
                
                
                // Section 7 Remaining Balance section
                Section {
                    RemainingDataCardView(cardIcon: "arrow.up.message", subDataOne: "INTL Credit",subDataTwo: "$0.00", isExpand: true, lineLimit: 1, action: {
                       
                   }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        .background(.panel).opacity(0.85)
                }.listRowBackground(Color.black)
                
                
                // Section 8 Remaining Balance section
                Section {
                    RemainingDataCardView(cardIcon: "airplane.circle", subDataOne: "INTL Roaming Credit",subDataTwo: "$0.00", isExpand: true, lineLimit: 2, action: {
                       
                   }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .background(.panel).opacity(0.85)
                }.listRowBackground(Color.black)
                
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

