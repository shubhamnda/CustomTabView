//
//  CustomTabBarContainerView.swift
//  Bash
//
//  Created by Shubham Nanda on 27/08/24.
//

import SwiftUI


struct CustomTabBarContainerView<Content:View>: View {
    @Binding var selection: TabBarItem
    let content: Content
    @State private var tabs: [TabBarItem] = []
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content){
        self._selection = selection
        self.content = content()
    }
    var body: some View {
        ZStack(alignment: .bottom){
            content.ignoresSafeArea()
            CustomTabBarView(tabs: tabs, selection: $selection)
        }.onPreferenceChange(TabBarItemsPreferenceKey.self, perform: { value in
            self.tabs = value
        })
        
    }
}
struct CustomTabBarContainerView_Previews: PreviewProvider {
    
    
    static let tabs: [TabBarItem] = [
        .home,.eraser,.pencil,.mic]
   
    static var previews: some View {
        CustomTabBarContainerView(selection: .constant(tabs.first!)){
            Color.black.ignoresSafeArea()
    }}
}
