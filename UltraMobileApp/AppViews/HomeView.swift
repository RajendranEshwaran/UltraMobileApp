//
//  HomeView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/20/25.
//

import SwiftUI

struct HomeView: View {
    let userInfo = UserProfileModel.userProfileInfo
    let screenWidth = UIScreen.main.bounds.width
    var body: some View {
        NavigationStack {
                ZStack {
                    Color.black
                    VStack {
                        List {
                            // MARK:- User profile short info panel
                             HStack(alignment: .top) {
                                 Text("Hi, \(userInfo.userFirstName)")
                                     .foregroundStyle(.white)
                                     .font(.system(size: 20, weight: .medium, design: .rounded))
                                 
                                 Spacer()
                                 Text(userInfo.userPhoneNumer.formatPhoneNumber())
                                     .foregroundStyle(.white)
                                     .font(.system(size: 20, weight: .medium, design: .rounded))
                                 
                             }.frame(width: screenWidth, height: 40)
                                .background(Color.black)

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
                            
                            buttonViewWithAction(buttonText: "Manage Plan", buttonWidth: 300, buttonHeight:60,buttonIcon: "chevron.forward.dotted.chevron.forward", action: {
                                
                            }).background(Color.yellow)
                                .frame(width: 300, height: 60, alignment: .center)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .listRowBackground(Color.black)
                                .padding(.horizontal, 50)
                            
                            
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
                        .listRowBackground(Color.black)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                }
                .navigationBarTitle(Text("Home"), displayMode: .inline)
                .navigationBarItems(trailing: NavigationLink(destination: Text("Destination")) {
                          Image(systemName: "bell")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.black)
                            .font(.title)
                        })
        }
    }
}

#Preview {
    HomeView()
}

