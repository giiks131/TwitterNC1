//
//  UserStatView.swift
//  TwitterNC1
//
//  Created by Aleksandr Shapovalov on 23/11/22.
//

import SwiftUI

struct UserStatView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack (spacing: 4){
                Text("63")
                    .font(.subheadline)
                    .bold()
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
//                    Spacer()
            
            HStack (spacing: 4){
                Text("13.2M")
                    .font(.subheadline)
                    .bold()
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
        }
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView()
    }
}
