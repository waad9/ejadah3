
import SwiftUI

struct settings: View {
    @State var isshowedit = false
    @State var isshownset = false
    @State var isshownhome = false
    @State var isshowsp = false
    var body: some View {
        NavigationView{
        
            VStack(spacing: 8){
                
                // prosser bar
                
               // Divider()
                Image("pr2")
                    .padding(.top,20)
                
                //navigation
                
                ZStack  {
                    

                    
                    HStack{
                        
                        
                        Button(action: {
                            isshowedit.toggle()
                            print("button pressed")
                        }) {
                            
                            Image(systemName: "person.crop.circle")
                                .fixedSize()
                                .font(.system(size: 33))
                                .foregroundColor(Color("bpurple"))
                            
                            Text("Profile")
                                .foregroundColor(Color("bpurple"))
                                .font(.system(size: 20))
                            
                        }
                        .fullScreenCover(isPresented: $isshowedit) {
                            EditProfile()
                        }
                        .offset(x:-116 , y:-250)
                        
                    }
                    
                    .padding()
                    
                    HStack{
                        
                        Button(action: {
                            isshowsp.toggle()
                            print("button pressed")
                        }) {
                            Image(systemName: "questionmark.folder.ar")
                                .font(.system(size: 28))
                                .fixedSize()
                                .foregroundColor(Color("bpurple"))
                            Text("Support")
                                .foregroundColor(Color("bpurple"))
                                .font(.system(size: 20))
                            
                            
                            
                        }
                        .fullScreenCover(isPresented: $isshowsp) {
                            Support()
                        }
                        .offset(x:-110 , y:-180)
                    }
                    
                    
                    
                    
                    
                    
                }
                    
                }
                
            }
            
      //  }
    }
    struct settings_Previews: PreviewProvider {
        static var previews: some View {
            settings()
        }
    }
    
}
