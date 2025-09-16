//
//  PlansView.swift
//  UltraMobileApp
//
//  Created by Rajendran Eshwaran on 8/20/25.
//

import SwiftUI

struct PlansView: View {
    let today: Date = Date()
        var tomorrow: Date {
            let calendar = Calendar.current
            return calendar.date(byAdding: .day, value: 1, to: today) ?? today
        }
    
    let screenSize = UIScreen.main.bounds.size
    var body: some View {
            SharedNavigationBar(title: "Balance", titleIcon: "", isTitleIconVisible: false, leftBarItems: LeftBarItemsView(isLeftBarItemsVisible: false, titleIcon: "arrow.left"), rightBarItems: RightBarItemsView(isRightBarItemsVisible: false, titleIcon: "arrow.right"), content: {
                ZStack {
                    Color.black
                    ScrollView {
                        VStack {
                            PlanCardView(planDetail: ["Plan End Date": Date.now.formatted(date: .long, time: .omitted), "Plan Month Cycle":"1 of 1"], cornerRadius: 10, firstBGColor: .purple, secondBGColor: .panel, fontColor: .white, title: "CURRENT PLAN", titleSub: "4GB | 1 Month")
                            
                            PlanCardView(planDetail: ["Plan Amount": "$30", "Plan Start Date":tomorrow.formatted(date: .long, time: .omitted)],cornerRadius: 10, firstBGColor: .purple, secondBGColor: .panel, fontColor: .white, title: "NEXT PLAN", titleSub: "4GB | 1 Month")
                            
                            buttonViewWithAction(buttonText: "Change Plan", buttonWidth: 300, buttonHeight:60,buttonIcon: "chevron.forward.dotted.chevron.forward", action: {
                                
                            }).background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .listRowBackground(Color.black)
                                .padding(10)
                        }.frame(width: screenSize.width)
                    }
                }
                    
            }).background(Color.black)
    }
}

#Preview {
    PlansView()
}
