//
//
//  Created by Afnan Alshrif on 18/07/1444 AH.
//

import SwiftUI


struct home: View {
    @State var isshownhome = false
    @State var isshownContentVie = false
    @State var isshownExpertp = false
    @State private var isSelected_1 = false
    @State private var isSelected_2 = false
    @State private var isSelected_3 = false
    
    @State var isshownset = false
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                Divider()
                HStack {
                   
                    VStack{
                        Text("Upcoming Session")
                            .bold()
                            .font(.system(size: 20))
                            .padding(.trailing, 150.0)

                        
                        

                        ZStack{


                            Text("""
                             Our next session will be on Saturday at 7 pm To join via Zoom link

                             """)
                            .font(.system(size: 18))

                            .padding()

                          .background(
                                Rectangle()
                                    .fill(Color.white)
                                    .cornerRadius(12)
                                    .shadow(
                                        color: Color.gray.opacity(0.7),
                                        radius: 8,
                                        x: 0,
                                        y: 0
                                    )
                            )
                            .padding()


                            Button(action: {
                              isshownContentVie.toggle()
                                print("button pressed")
                            }) {
                                Image("join")
                                    .resizable()
                                    .frame(width:60, height:30)
                                    .cornerRadius(12)
                                    .padding(.leading, 250.0)
                                    .padding(.top,45)





                            }


                        }
                        .fullScreenCover(isPresented: $isshownContentVie) {
                            SignUpView()
                        }
                        
                        VStack(alignment: .leading ){
                            Text("What would you like to be the topic of the next session?").padding()
                                .font(.system(size: 18))
                            Button {
                                isSelected_1 = true
                                isSelected_2 = false
                                isSelected_3 = false
                            } label: {
                                
                                Text("   ")
                                    .frame(width: 30 , height: 30)
                                    .background(isSelected_1 ? Color.black : Color.white)
                                    .cornerRadius(100)
                                    .foregroundColor(Color.black)
                                    //.padding()
                                    .overlay(RoundedRectangle(cornerRadius: 100)
                                        .stroke(Color.black, lineWidth: 3)
                                        .scaleEffect(0.5)
                                    )
                                Text("Presentation skills.")
                                    .foregroundColor(Color("text"))
                                
                            }
                            Button {
                                isSelected_1 = false
                                isSelected_2 = true
                                isSelected_3 = false
                            } label: {
                                
                                Text("   ")
                                    .frame(width: 30 , height: 30)
                                    .background(isSelected_2 ? Color.black : Color.white)
                                    .cornerRadius(100)
                                    .foregroundColor(Color("text"))
                                    //.padding()
                                    .overlay(RoundedRectangle(cornerRadius: 100)
                                        .stroke(Color.black, lineWidth: 3)
                                        .scaleEffect(0.5)
                                    )
                                Text("listening skills.")
                                    .foregroundColor(Color("text"))
                                
                            }
                            Button {
                                isSelected_1 = false
                                isSelected_2 = false
                                isSelected_3 = true
                            } label: {
                                
                                Text("   ")
                                    .frame(width: 30 , height: 30)
                                    .background(isSelected_3 ? Color.black : Color.white)
                                    .cornerRadius(100)
                                    .foregroundColor(Color.black)
                                   // .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 100)
                                        .stroke(Color.black, lineWidth: 3)
                                        .scaleEffect(0.5)
                                    )
                                Text("Communication skills.")
                                    .foregroundColor(Color("text"))
                                
                            }
                            Button(action: saveVote) {
                                Image("vote")
                                    .resizable()
                                    .frame(width:60, height:30)
                                    .cornerRadius(12)
                                    .padding(.leading, 250.0)
                                    .padding([.leading, .bottom, .trailing])
                                    
                                
                                
                                
                            }
                            
                        }.background(
                            Rectangle()
                                .fill(Color.white)
                                .cornerRadius(12)
                                .shadow(
                                    color: Color.gray.opacity(0.7),
                                    radius: 8,
                                    x: 0,
                                    y: 0
                                )
                        )
                        .padding(.horizontal)
                        
//                        func newvote() {
//
//                        }
                        
                        Text("Categories")
                            .bold()
                            .font(.system(size: 20))
                            .padding(.trailing, 222.0)
                            .padding()
                        
                        Button(action: {
                            isshownhome.toggle()
                            print("button pressed")
                        }) {
                            Image("Session")
                                .resizable()
                                .frame(width: 350 , height: 150)
                                .cornerRadius(12)
                            
                            
                            
                        }
                        //.padding()
                        .fullScreenCover(isPresented: $isshownhome) {
                            ContentVie()
                        }
                        
                        Button(action: {
                            isshownExpertp.toggle()
                            print("button pressed")
                        }) {
                           
                            Image("Experts")
                                .resizable()
                                .frame(width:350, height:150)
                                .cornerRadius(12)
                            
                            
                            
                        }
                        
                        
                    }
                    .padding()
                    
                    .fullScreenCover(isPresented: $isshownExpertp) {
                        Expertp()
                    }
                }
                
            }
            
            
            
            .navigationTitle("Explore")
            
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    NavigationLink(
                                    destination: settings(),
                                    label: {
                                    Image(systemName: "gearshape")
                                    })
                                    .foregroundColor(Color("Color"))
                                    )
            .accentColor(.black)
            
        } .tint(Color("Color"))
    }
    
    func saveVote(){
        
    }
    // "gearshape"
//    func newvote() {
//
//    }
    
    func buttonPressed() {
        print("Button pressed")
    }
    
    

    struct home_Previews: PreviewProvider {
        static var previews: some View {
            home()
        }
    }
}

