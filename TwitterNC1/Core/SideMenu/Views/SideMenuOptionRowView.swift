//
//  SideMenuOptionRowView.swift
//  TwitterNC1
//
//  Created by Aleksandr Shapovalov on 23/11/22.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 12) {
            
            Image(systemName: viewModel.imageName)
                .font(.headline).bold()
                .foregroundColor(.gray)
                .frame(width: 16, height: 16)
                
            Text(viewModel.title)
                .foregroundColor(.black)
                .font(.headline).bold()
            
                .padding()
            
            Spacer()
            
            
        }
        .frame(height: 30)
        .padding(.horizontal)
    }
}

struct SideMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRowView(viewModel: .profile)
    }
}
