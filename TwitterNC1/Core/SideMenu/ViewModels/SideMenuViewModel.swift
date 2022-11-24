//
//  SideMenuViewModel.swift
//  TwitterNC1
//
//  Created by Aleksandr Shapovalov on 23/11/22.
//

import Foundation


enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case topics
    case bookmarks
    case lists
    case circle
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .topics: return "Topics"
        case .lists: return "Lists"
        case .bookmarks: return "Bookmarks"
       
        case .circle: return "Twitter Circle"
        }
    }
    
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .topics: return "ellipsis.message.fill"
        case .lists: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .circle: return "person.2"
        }
    }
}
