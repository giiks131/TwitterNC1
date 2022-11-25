//
//  ProfileView.swift
//  TwitterNC1
//
//  Created by Aleksandr Shapovalov on 19/11/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation
    @Environment(\.presentationMode) var presentationMode
    
//    init() {
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithTransparentBackground()
//        appearance.backgroundColor = UIColor.systemBackground.withAlphaComponent(0.5)
//        UINavigationBar.appearance().standardAppearance = appearance
//    }
    
    var body: some View {
        
        NavigationView {
//            Color(.blue)
            ScrollView {
//                Color(.blue)
                VStack(alignment: .leading) {
//                    Color(.blue)
                    headerView
                    actionButtons
                    userInfoDetails
                    tweetFilterBar
                    tweetsView
                    
                    
//                    Spacer()
                }
                
                //            .navigationBarHidden(true)
            }
            
            
        }
        
        
        .navigationBarBackButtonHidden(true)
        
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left.circle")
                        .foregroundColor(.black)
                }

            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Image(systemName: "magnifyingglass")
            }
        }
        .toolbarBackground(
            Color.blue,
            for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    
    var headerView: some View {
        
        ZStack(alignment: .bottomLeading) {
           
            Color(.systemBlue)
                .ignoresSafeArea()
            
            
            VStack {
                
//                Button {
//                    presentationMode.wrappedValue.dismiss()
//                } label: {
//                    Image(systemName: "arrow.left")
//                        .resizable()
//                        .frame(width: 20, height: 16)
//                        .foregroundColor(.white)
//                        .offset(x: 16,y: 12)
//                }

                
                Image("tim")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 72, height: 72)
                .offset(x: 16, y: 47)
            }
        }
        .frame(height: 8)
    }
    
    var actionButtons: some View {
        HStack {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                //
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }

        }
        .padding(.trailing)
        .padding(.top, 35)
        
    }
    
    
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 2) {
            HStack {
                Text("Tim Cook")
                    .font(.title2.bold())
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
                
                Text("@timcook")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("Best CEO all time")
                    .font(.subheadline)
                    .padding(.vertical)
            
            HStack(spacing: 13) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("California, USA")
                }
                
//                    Spacer()
                
                HStack {
                    Image(systemName: "calendar")
                    Text("Joined April 2013")
                    
                }
                
            }
            .font(.caption)
            .foregroundColor(.gray)
            
           UserStatView()
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
    
    
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .blue : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
    
    
    
    var tweetsView: some View {
//        ScrollView {
            LazyVStack {
                ForEach(0 ... 9, id: \.self) { _ in
                    TweetsRowView()
                        .padding()
                }
            }
//        }
    }
}
