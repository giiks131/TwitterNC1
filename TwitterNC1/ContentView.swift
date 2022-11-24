

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    

    
    var body: some View {
        ZStack(alignment: .topLeading) {
            MainTabView()
                .navigationBarHidden(showMenu)
            
            
            if showMenu {
                ZStack {
                    Color(.black)
                        .opacity(showMenu ? 0.25 : 0.0)
                    
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            SideMenuView()
                .frame(width: 300)
                .background(Color.white)
                .offset(x: showMenu ? 0: -300, y: 0)
                
                
        }
//        .navigationTitle(Image("blueLogo"))
        .navigationBarTitleDisplayMode(.inline)
        
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    withAnimation(.easeInOut) {
                        showMenu.toggle()
                    }
                } label: {
                    Image("tim")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 32, height: 32)
                }

            }
            
            ToolbarItem(placement: .principal) {
                Image("blueLogo")
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Image("timeline")
            }
           
        }
        .onAppear {
            showMenu = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
