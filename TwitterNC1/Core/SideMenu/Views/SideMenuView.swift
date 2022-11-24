//
//  SideMenuView.swift
//  TwitterNC1
//
//  Created by Aleksandr Shapovalov on 23/11/22.
//

import SwiftUI

struct SideMenuView: View {

            

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
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
            .padding(.top, 45)

            ForEach(SideMenuViewModel.allCases, id:\.rawValue) { viewModel in

                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    } label : {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }

                } else {
                    SideMenuOptionRowView(viewModel: viewModel)
                }


            }
            
            Divider()
            Spacer()

            
            VStack(spacing: 20) {
                HStack {
                    Text("Creator Studio")
                        .font(.subheadline).bold()
                    Spacer()
                    Image(systemName: "chevron.down")
                        .font(.subheadline)
                }
               
                .padding(.trailing)

                HStack {
                    Text("Professional Tools")
                        .font(.subheadline).bold()
                    Spacer()
                    Image(systemName: "chevron.down")
                        .font(.subheadline)
                }
               
                .padding(.trailing)
                
                HStack {
                    Text("Settings and Support")
                        .font(.subheadline).bold()
                    Spacer()
                    Image(systemName: "chevron.down")
                        .font(.subheadline)
                }
                
                .padding(.trailing)
            }
            .padding()
            
            
            HStack {
                Image(systemName: "sun.max")
                Spacer()
                Image(systemName: "qrcode")
                    .padding()

            }
            .padding()
           Spacer()


            
//
//
        }
        
        .padding(.top)
//        .padding(.bottom, 15)
    }
        
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}



