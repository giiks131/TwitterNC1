//
//  TweetsRowView.swift
//  TwitterNC1
//
//  Created by Aleksandr Shapovalov on 16/11/22.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack {
            
            // profile image + user info + tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                // user info & tweet caption
                VStack {
                    // user info
                    HStack {
                        Text("Taylor Swift")
                            .font(.subheadline).bold()
                        
                        Text("@taylorswift")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    // tweet caption
                }
            }
        }
    }
}

struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
