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
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: .infinity))], alignment: .leading) {
                        ForEach(items, id: \.self) { item in
                            
                            InformationCardView {
                                HStack() {
                                    VStack() {
                                        Text("4GB").font(.system(size: 30, weight: .bold, design: .rounded))
                                            .frame(minWidth: 0,  maxWidth: .infinity, alignment: .leading)
                                            .foregroundStyle(.white)
                                        
                                        Text("Single Month").font(.system(size: 15, weight: .light, design: .rounded))
                                            .frame(minWidth: 0,  maxWidth: .infinity, alignment: .leading)
                                            .foregroundStyle(.white)
                                        
                                        Text("$19/Month").font(.system(size: 20, weight: .bold, design: .rounded))
                                            .frame(minWidth: 0,  maxWidth: .infinity, alignment: .leading)
                                            .foregroundStyle(.white)
                                    }
                                    Spacer()
                                    VStack {
                                        Text("4GB").font(.system(size: 30, weight: .bold, design: .rounded))
                                            .frame(minWidth: 0,  maxWidth: .infinity, alignment: .trailing)
                                            .foregroundStyle(.white)
                                        Text("Single Month").font(.system(size: 15, weight: .light, design: .rounded))
                                            .frame(minWidth: 0,  maxWidth: .infinity, alignment: .trailing)
                                            .foregroundStyle(.white)
                                        Text("$19/Month").font(.system(size: 20, weight: .bold, design: .rounded))
                                            .frame(minWidth: 0,  maxWidth: .infinity, alignment: .trailing)
                                            .foregroundStyle(.white)
                                    }
                                }
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            .background(.Panel)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                                
                        }
                    }
                }
                .onTapGesture {
                    withAnimation {
                        items.shuffle()
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding(.top, 250)
    }
}

#Preview {
    HomeView()
}
