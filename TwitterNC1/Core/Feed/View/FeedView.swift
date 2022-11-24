//
//  FeedView.swift
//  TwitterNC1
//
//  Created by Aleksandr Shapovalov on 16/11/22.
//

import SwiftUI


struct FeedView: View {
    
    let color: UIColor = UIColor(red: 29/255.0, green: 161/255.0, blue: 242/255.0, alpha: 1)

    @State private var selectedFilter: FeedSplitViewModel = .home
    @State var animate: Bool = false
    @State var showSplash: Bool = true
    @State var loggedIn: Bool = false
    
    @State private var showNewTweetView = false
    
    var body: some View {
        
        VStack {
            ZStack {
                //Content
                ZStack(alignment: .bottomTrailing) {
                    ScrollView {
                        LazyVStack {
                            ForEach(0...8, id: \.self) { _ in
                                TweetsRowView()
                                    .padding()
                            }
                        }
                    }
                    Button {
                        showNewTweetView.toggle()
                    } label: {
                        Image("newTweet")
                            .resizable()
                            .frame(width: 56, height: 56)
                            .padding()
                    }
                    .fullScreenCover(isPresented: $showNewTweetView) {
                        NewTweetView()
                    }
                }
                
                
                // load
                ZStack {
                    Color(color)
                    
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 85, height: 85)
                        
                        .scaleEffect(animate ? 50 : 1)
                        .animation(Animation.easeOut(duration: 0.3))
                }
                
                .edgesIgnoringSafeArea(.all)
                .animation(Animation.linear(duration: 0.7))
                .opacity(showSplash ? 1 : 0)
            }
        }
        
        
//        .onAppear {
//                DispatchQueue.main.asyncAfter(deadline: .now()+0.3) {
//                    animate.toggle()
//                    loggedIn = true
//                }
//                DispatchQueue.main.asyncAfter(deadline: .now()+0.8) {
//                    showSplash.toggle()
//
//            }
//        }
        .onAppear(perform: onLoad)
    }
    func onLoad() {
        if !loggedIn {
            DispatchQueue.main.asyncAfter(deadline: .now()+0.3) {
                animate.toggle()
                loggedIn = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                showSplash.toggle()

        }
            loggedIn = true
        }
    }
}



struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}


extension FeedView {
    var feedSplitView: some View {
        HStack {
            ForEach(feedSplitView.allCases, id: \.rawValue) { item in
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
}
