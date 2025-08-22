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
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: .infinity))]) {
                        ForEach(items, id: \.self) { item in
                            
                            InformationCardView() {
                                HStack(alignment: .leading) {
                                    VStack(alignment: .leading) {
                                        Text("4GB").font(.system(size: 30, weight: .bold, design: .rounded))
                                        Text("Single Month").font(.system(size: 15, weight: .light, design: .rounded))
                                        Text("$19/Month").font(.system(size: 30, weight: .bold, design: .rounded))
                                    }
                                }
                            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 200, maxHeight: .infinity, alignment: .leading)
                                .background(Color.gray).opacity(0.85)
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
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            //.background(Color.yellow).opacity(0.85)
            .padding(.top, 250)
    }
}

#Preview {
    HomeView()
}
