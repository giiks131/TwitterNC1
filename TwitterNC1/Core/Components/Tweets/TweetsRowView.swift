import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack (alignment: .leading){
            
            // profile image + user info + tweet
            HStack(alignment: .top, spacing: 12) {
                Image("tim")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 56, height: 56)
//                    .foregroundColor(Color(.systemBlue))
                
                // user info & tweet caption
                VStack(alignment: .leading, spacing: 4) {
                    // user info
                    HStack(spacing: 4) {
                        Text("Tim Cook")
                            .font(.subheadline).bold()
                        
                        Text("@timcook")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("• 2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                          
                    }
                    
                    // tweet caption
                    Text("""
                    New device tomorrow!!! \n
                    Can't wait for this! 🤓
                    """)
                        .font((.subheadline))
                        .multilineTextAlignment(.leading)
                }
                
            }
            
            //action buttons
            
            HStack {
                Button {
                    // action
                } label: {
                    Image("Message")
                        .font(.subheadline)
                        
                }
                
                Spacer()
                
                Button {
                    // action
                } label: {
                    Image("Retweet")
                        .font(.subheadline)
                        
                }
                
                Spacer()
                
                Button {
                    // action
                } label: {
                    Image("Like")
                        .font(.subheadline)
                        
                }
                
                Spacer()
                
                Button {
                    // action
                } label: {
                    Image("Upload")
                        .font(.subheadline)
                        
                }
                
                
//                .padding()
  
            }
            
            .padding(EdgeInsets(top: 0, leading: 67, bottom: 0, trailing: 67))
            .foregroundColor(.gray)
            
            Divider()
            
        }
       
//        .padding()
    }
}

struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
