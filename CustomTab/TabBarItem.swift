//
//  TabBarItem.swift
//  Bash
//
//  Created by Shubham Nanda on 27/08/24.
//

import Foundation
import SwiftUI

enum TabBarItem: Hashable {
    case home,mic,pencil,eraser
    
    var iconName: String {
        switch self {
        case.home : return "house"
        case.mic : return "mic"
        case.pencil : return "pencil"
        case.eraser : return "eraser"
        }
    }
    var title: String {
        switch self {
        case.home : return "Home"
        case.mic : return "Mic"
        case.pencil : return "Pencil"
        case.eraser : return "Eraser"
        
        }
    }
    var color: Color {
        switch self {
        case.home : return Color.green
        case.mic : return  Color.red
        case.pencil : return  Color.blue
        case.eraser : return  Color.yellow
        }
    }
}
