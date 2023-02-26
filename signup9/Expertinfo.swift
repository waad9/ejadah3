//
//  Expertinfo.swift
//  signup9
//
//  Created by arwanmri on 27/07/1444 AH.
//

import SwiftUI
import FirebaseStorage
import FirebaseFirestore
import SDWebImageSwiftUI

// expert info page
struct Expertinfo: View {

var exinfor : expertinfo
@State var isshownexpertlist = false
@State var isshownsett = false
func buttonPressed(){
    print("Button Pressed")
}
var body: some View {
    
    ZStack{
        //Color("dark")
        NavigationView {
            
            
            GeometryReader{
                geo in
                VStack{
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 5)
                        
                            .foregroundColor(Color("color1"))
                            .frame(width: 347.15, height: 293.73)
                            .padding()
                        
                        //to call specific data from firestore
                        VStack{
                            AnimatedImage(url:URL(string: exinfor.image))
                                .resizable()
                                .frame(width: 100, height: 100)
                                                                   .clipShape(Circle())
                            
                                .overlay(Circle().stroke(Color("Color"), lineWidth: 01))
                                .frame(width: 120, height: 120)

                            
                            // i. is to call that specific data needed
                            Text(exinfor.exname)
                                .foregroundColor(.black)
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                            
                            
                            
                            Text(exinfor.expinfo)
                                .foregroundColor(.black)
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                            
                        }
                    }
                    
                    Text("Session Information")
                        .foregroundColor(Color("text"))
                        .font(Font.custom("SF Pro", size: 20))
                        .frame(maxWidth: .infinity ,alignment: .leading)
                        .bold()
                        .padding()
                    ZStack{
                      
                        
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color.white)
                            .border(Color("Color"))
                            .frame(width: 343, height: 169)
                              //              .position(.init(x: 200, y: -10))
                        VStack{
                         
                            Text(exinfor.desc)
                                //.frame(maxWidth: .infinity ,alignment: .leading)
                                
                                .foregroundColor(Color("text"))
                                .font(Font.custom("SF Pro", size: 18))
                                .padding(.bottom ,10)
                                .padding(.leading, -150)
                            Text(exinfor.desc2)
                                
                                .padding(.bottom ,10)
                                .padding(.leading, -105)
                                //.padding(.leading,200)
                                .foregroundColor(Color("text"))
                                .font(Font.custom("SF Pro", size: 18))
                            Text("The session will be via Zoom link")
                                .font(Font.custom("SF Pro", size: 20))
                                .foregroundColor(Color("Color"))
                                .padding(.top)
                        }
                    }
                    Spacer()
                    Button (action:{
                    buttonPressed()}
                    )
                    {

                                            ZStack{
                                                RoundedRectangle(cornerRadius: 5)
                                                    .foregroundColor(Color("Color"))
                                                    .frame(width: 353, height: 56)
                                                
                                                
                                                
                                                Link("Contact", destination: URL(string:exinfor.link)!)
                                                    .foregroundColor(.white)
                                                    .font(Font.custom("SF Pro", size: 20))
                                                   // .position(.init(x: 200, y: -10))
                                            }
                                        }
                                    }
                                    
                                }
                                
                                
                            }.tint(Color("Color"))
                            
                            .navigationTitle("Expert Information")
                            .foregroundColor(.black)
                            
                            .navigationBarTitleDisplayMode(.inline)
                            .toolbar{
                                ToolbarItemGroup(placement:.navigationBarLeading){
                                    Button(action:{
                                        isshownexpertlist.toggle()
                                        
                                    },label: {
                                        Image(systemName:"chevron.backward")
                                    })
                                    .foregroundColor(Color("Color"))
                                }
                                            ToolbarItemGroup(placement:.navigationBarTrailing){
                                                NavigationLink(
                                                    destination: settings(),
                                                    label: {
                                                        Image(systemName: "gearshape")
                                                    })
                                                .foregroundColor(Color("Color"))

                                            }
                            }
                            
                            .fullScreenCover(isPresented: $isshownexpertlist) {
                                Expertp()
                                
                            }
                            
                            
                            
                        }
                        
                    }
                    }

