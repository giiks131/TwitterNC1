
import Foundation


enum FeedSplitViewModel: Int, CaseIterable {
    
    case home
    case news
    case memes
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .news: return "News"
        case .memes: return "Memes"
        }
    }
}
