//
//  SideMenuView.swift
//  TwitterNC1
//
//  Created by Aleksandr Shapovalov on 23/11/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Image("tim")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Tim Cook")
                        .font(.headline)
                    
                    Text("@timcook")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                UserStatView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id:\.rawValue) { viewModel in
                
                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    } label : {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                } else if viewModel == .logout {
                    Button {
                        print("logged out")
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }

                } else {
                    SideMenuOptionRowView(viewModel: viewModel)
                }
                 
                
            }
            Divider()
            Spacer()
            
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}



