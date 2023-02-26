//
//  ProfileView.swift
//  signup9
//
//  Created by waad. on 28/07/1444 AH.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var user: SignUpViewModel
    
  
    
    var body: some View {
        
    //    EditProfile()
        
        
        VStack {
            Text("Succesfully \(user.user?.username ?? "") \(user.user?.email ?? "")")
            Button(action: {
                user.signOut()
            }) {
                Text("Sign Out")
            }
        }
    }
}
