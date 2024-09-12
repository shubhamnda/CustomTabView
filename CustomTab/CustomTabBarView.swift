//
//  CustomTabBarView.swift
//  Bash
//
//  Created by Shubham Nanda on 27/08/24.
//

import SwiftUI

struct CustomTabBarView: View {
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    var body: some View {
        
        HStack {
            ForEach(tabs, id: \.self) { tab in
                tabView(tab: tab).onTapGesture {
                    switchToTab(tab: tab)
                }
            }
        }.padding(10).background(Color.black.ignoresSafeArea(edges:.top)).cornerRadius(20).shadow(color: .green.opacity(0.6), radius: 20, x: 0, y: 3).padding(.horizontal)
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
 
    
   static let tabs: [TabBarItem] = [
    .home,.eraser,.pencil,.mic]
    static var previews: some View {
      
        VStack {
            Spacer()
            CustomTabBarView(tabs: tabs, selection: .constant(tabs.first!))
        }
    }
}

extension CustomTabBarView {
    private func tabView(tab: TabBarItem) -> some View {
        VStack {
            Image(systemName: tab.iconName).font(.subheadline)
            Text(tab.title).font(.system(size: 10, weight: .semibold,design: .rounded))
        }
        .foregroundColor(selection == tab ? tab.color: Color.white)
        .padding(.vertical,8)
        .frame(maxWidth: .infinity)
        .background(ZStack {
            if selection == tab {
                RoundedRectangle(cornerRadius: 10).fill(tab.color.opacity(0))
            }
        }).cornerRadius(10)
    }
    private func switchToTab(tab:TabBarItem){
        withAnimation(.easeInOut(duration: 0.2)) {
            selection = tab
        }
    }
}
 
