//
//  ContentView.swift
//  signup9
//
//  Created by waad. on 22/07/1444 AH.
//


import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var passwordConfirmation: String = ""
    @State private var showPassword: Bool = false
    var body: some View {
        VStack {
            VStack(spacing: 8){
                Text("Username")
                    .padding(.trailing, 265)
                
                TextField("Your username", text: $email)
                    .padding()
                    .keyboardType(.numberPad)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray, lineWidth: 1)
                    }
            }
            .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
