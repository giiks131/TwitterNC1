

import SwiftUI

struct ContentView: View {
    
    let color: UIColor = UIColor(red: 29/255.0, green: 161/255.0, blue: 242/255.0, alpha: 1)
    
    
    @State var animate: Bool = false
    @State var showSplash: Bool = true
    
    var body: some View {
        VStack {
            ZStack {
                //Content
                ZStack {
                    VStack {
                        Image(systemName: "house").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 200)
                        
                        Text("Home")
                            .font(.system(size: 42))
                    }
                }
                //Splash
                ZStack {
                    Color(color)
                    
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 85, height: 85)
                        .colorInvert()
                        .scaleEffect(animate ? 50 : 1)
                        .animation(Animation.easeOut(duration: 0.4))
                }
                
                .edgesIgnoringSafeArea(.all)
                .animation(Animation.linear(duration: 0.5))
                .opacity(showSplash ? 1 : 0)
                
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now()+0.3) {
                animate.toggle()
            }
            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                showSplash.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
