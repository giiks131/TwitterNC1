//
//  UserRowView.swift
//  TwitterNC1
//
//  Created by Aleksandr Shapovalov on 23/11/22.
//

import SwiftUI

struct UserRowView: View {
    

    
    var body: some View {
        HStack (spacing: 12) {
//            Circle()
            Image("cat1")
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 56, height: 56)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(user.nickname)
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                Text(user.fullName)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
