//
//  TabView.swift
//  CustomTab
//
//  Created by Shubham Nanda on 05/09/24.
//

import SwiftUI

struct TabView: View {
    @State private var tabSelection: TabBarItem = .home
    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            Color.black.tabBarItem(tab: .home, selection: $tabSelection)
            Color.red.tabBarItem(tab: .mic, selection: $tabSelection)
            Color.yellow.tabBarItem(tab: .pencil, selection: $tabSelection)
            Color.blue.tabBarItem(tab: .eraser, selection: $tabSelection)
        }
    }
}

#Preview {
    TabView()
}
