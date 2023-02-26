//  expert.swift
//  signup9
//
//  Created by arwanmri on 25/07/1444 AH.

import SwiftUI
struct splash: View {
@State var isActive:Bool=false

var body: some View {
    ZStack{
        Color("Color 3")
            .ignoresSafeArea(.all)
        VStack{
            
            if isActive{
                home()
            }else{
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode:.fit )
                    .frame(width: 350, height: 400)
                    .scaledToFit()
                    .cornerRadius(8)
            }
            
        } .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                withAnimation{
                    self.isActive=true
                    
                }
            }
        }
        
        
    }
}
    }
struct splash_Previews: PreviewProvider {
static var previews: some View {
splash()
}
}
