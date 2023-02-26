//
//  SwiftUIView.swift
//  signup9
//
//  Created by waad. on 06/08/1444 AH.
//

import SwiftUI

struct Support: View {
    @State var isshownhome = false
    var body: some View {
        NavigationView{
        VStack{
            
            Image(systemName: "envelope")
                .font(.system(size: 50))
                .fixedSize()
                .foregroundColor(Color("bpurple"))
                .padding()
            
            Text("waad_ayad@hotmail.com")
                .foregroundColor(Color("text"))
        }
        .navigationTitle("Support")
        
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button(action:{
                                    isshownhome.toggle()
                                }){
                                    Image(systemName:"xmark")
                                        .foregroundColor(Color("Color"))
                                        .font(.system(size: 20))
                                       // .padding(.leading, 280)
                                })
                        
                        .fullScreenCover(isPresented: $isshownhome) {
                            home()
                    }
        
        
    } 
    }
}

struct Support_Previews: PreviewProvider {
    static var previews: some View {
        Support()
    }
}
