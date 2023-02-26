//
//  Expertp.swift
//  tmkn
//
//  Created by arwanmri on 22/07/1444 AH.
//

import SwiftUI
import Firebase
import FirebaseStorage
import FirebaseFirestore
import SDWebImageSwiftUI

struct Expertp: View {
@State var isshownhome = false
@State var isshownsett = false
var body: some View {
    NavigationView {
    VStack{
    // expert list designing
    Main()

                    .navigationTitle("Experts")
                    .foregroundColor(.black)
                
                
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar{
                        ToolbarItemGroup(placement:.navigationBarLeading){
                            Button(action:{
                                
                                isshownhome.toggle()
                            },label: {
                                Image(systemName:"chevron.backward")
                            })
                            .foregroundColor(Color("Color"))
                        }
                                        ToolbarItemGroup(placement:.navigationBarTrailing){
                                            NavigationLink(
                                                destination:  settings(),
                                                label: {
                                                    Image(systemName: "gearshape")
                                                })
                                            .foregroundColor(Color("Color"))

                        
                                        }
                    }
                
            }
        } .tint(Color("Color"))
        //home page
        .fullScreenCover(isPresented: $isshownhome) {
               home()
        }
        .fullScreenCover(isPresented: $isshownsett) {
            settings()
            
        }
        }
    }
struct Expertp_Previews: PreviewProvider {
static var previews: some View {
Expertp()
}
}

struct Main : View {
@ObservedObject var model = ExpertModel()

var body: some View {
   // NavigationView {
    ScrollView{
    VStack{

                        //to call specific data from firestore
                        ForEach(model.list,id:\.id){item in
                            VStack {
                                NavigationLink(destination: Expertinfo(exinfor : item)  .navigationBarBackButtonHidden(), label:{
                                    VStack(spacing:10){
                                        Text(item.type)
                                            .foregroundColor(Color("text"))
                                            .font(.system(size: 18))
                                            .bold()
                                            .frame(maxWidth: .infinity ,alignment: .leading)
                                            .padding()
                                        AnimatedImage(url:URL(string: item.image))
                                            .resizable()
                                            .border(Color("Color"))
                                            .frame(width: 100, height: 100)
                                            .frame(maxWidth: .infinity ,alignment: .leading)
                                        
                                        // i. is to call that specific data needed
                                        Text(item.exname)
                                            .foregroundColor(Color("text"))
                                            .font(.system(size: 16))
                                        //                                        .fontWeight(.bold)
                                            .frame(width: 102)
                                            .frame(maxWidth: .infinity ,alignment: .leading)
                                    }  })
                                
                                //                            Text(item.expinfo)
                                //                                .foregroundColor(Color("text"))
                                //                                .font(.system(size: 12))
                                //                                .fontWeight(.bold)
                                //                                .frame(width: 102)
                                
                            }.padding()                     }
                        
                        
                        
                        
                    }
        
    }
        
  //  }
        
    }
    init(){
        model.getData()
    }
    }
