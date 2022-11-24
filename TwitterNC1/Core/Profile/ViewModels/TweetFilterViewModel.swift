
import Foundation


enum TweetFilterViewModel: Int, CaseIterable {
    
    case tweets
    case replies
    case media
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .media: return "Media"
        case .likes: return "Likes"
        }
    }
}
