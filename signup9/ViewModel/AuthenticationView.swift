//
//  AuthenticationView.swift
//  signup9
//
//  Created by waad. on 28/07/1444 AH.
//

import SwiftUI

struct AuthenticationView: View {
    
    var body: some View {
        VStack {
            
            VStack {
                SignInView()
                NavigationLink(destination: SignUpView()) {
                    Text("Don’t have an account? Sign up")
                        .foregroundColor(Color("Color"))
                }.foregroundColor(Color("Color"))
            }
        }
    }
}

struct SignInView: View {
    @State var isshownhome = false
    @EnvironmentObject var user: SignUpViewModel
    @State private var email: String = ""
    @State private var password: String = ""
 //   @State private var showPassword: Bool = false
    @State private var isPasswordVisible = false
    var body: some View {
//        VStack {
//            VStack {
//                SignInView()
//                NavigationLink(destination: SignUpView()) {
//                    Text("Don’t have an account? Sign up")
//                        .foregroundColor(Color("Color"))
//                }.foregroundColor(Color("Color"))
//            }
//        }
        VStack {
         
//                VStack(spacing: 8){
//
//
//
//                }

                        Button(action:{
                            isshownhome.toggle()
                        },label: {
                            Image(systemName:"xmark")
                                .foregroundColor(Color("Color"))
                                .font(.system(size: 25))
                                .padding(.leading, 280)
                        })
                
                .fullScreenCover(isPresented: $isshownhome) {
                    home()
            }
            
        
            VStack{
            Text("Sign In")
                               .font(.system(size: 30))
                               .foregroundColor(Color("Color"))
                               .padding(.bottom, 41.0)
            
//                           HStack(spacing: 10){
//                               Button(action: {
//
//                               }) {
//
//                                   Image(systemName: "xmark")
//                                       .font(.system(size: 25))
//                                       .foregroundColor(Color("Color"))
//                                       .padding()
//                                      // .padding(.bottom, 80.0)
//                                       .padding(.horizontal, 12)
//
//                                       .cornerRadius(10)
//                                       .padding(.leading, 299)
//                               }
//                           }
            VStack(spacing: 8){
                             Text("Email")
                                 .padding(.trailing, 299)
                             
                             TextField("Your Email", text: $email)
                                 .padding()
                                 .keyboardType(.numberPad)
                                 .overlay {
                                     RoundedRectangle(cornerRadius: 10)
                                         .stroke(.gray, lineWidth: 1)
                                     
                                 }
                             
                             
                         }
            .padding()
                .autocapitalization(.none)
                .disableAutocorrection(true)
            VStack {
                Text("Password").frame(maxWidth: .infinity, alignment: .leading)
                ZStack(alignment: .trailing) {
                    Group {
                        if isPasswordVisible {
                            TextField("Password", text: $password)
                        } else {
                            SecureField("Password", text: $password)
                        }
                    }
                    .opacity(1)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray , lineWidth: 1)
                    )
                    Spacer(minLength: 40)
                    Button(action: {
                        isPasswordVisible.toggle()
                    }) {
                        Image(systemName: self.isPasswordVisible ? "eye" : "eye.slash")
                    }.padding(15)
                }
               // Spacer(minLength: 30)
            }.padding(5) // Password
            .padding()
                .autocapitalization(.none)
                .disableAutocorrection(true)
            Button(action: {
                user.signIn(email: email, password: password)
            }) {
                Text("Sign In")
                    .frame(width: 353, height: 56)
                    .foregroundColor(Color.white)
                    .background(Color("Color").cornerRadius(10))
                    .padding()
           }
       
            }
            .padding(.bottom,220)
        }
        
    }
   
}

//----------------------signup---------------------------

struct SignUpView: View {
    @EnvironmentObject var user: SignUpViewModel
    @State private var email: String = ""
    @State private var UserName: String = ""
    @State private var lastName: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible = false
    //@State private var showPassword: Bool = false
    @State var isshownhome = false
    
    var body: some View {
        VStack {
            //   NavigationView {
            VStack{
                // expert list designing
                
                
            }
            //                .navigationTitle("Experts")
            //                .foregroundColor(.black)
            //
            //               // .navigationBarTitleDisplayMode(.inline)
            //              //  .toolbar{
            //
            //                   // ToolbarItemGroup(placement:.navigationBarTrailing){
            //                        Button(action:{
            //                            isshownhome.toggle()
            //                        },label: {
            //                            Image(systemName:"xmark")
            //                                .foregroundColor(Color("Color"))
            //                        }).fullScreenCover(isPresented: $isshownhome) {
            //                            home()
            //
            //                    }
            //
            //             //   }
            //
            //           // }
            
            
            Button(action:{
                isshownhome.toggle()
            },label: {
                Image(systemName:"xmark")
                    .foregroundColor(Color("Color"))
                    .font(.system(size: 25))
                    .padding(.leading, 280)
            })
            
            .fullScreenCover(isPresented: $isshownhome) {
                home()
            }
            
            VStack{
                Text("Sign Up")
                    .font(.system(size: 30))
                    .foregroundColor(Color("Color"))
               
                VStack(spacing: 8){
                    Text("Username")
                        .padding(.trailing, 265)
                    
                    TextField("Your username", text: $UserName)
                        .padding()
                        .keyboardType(.numberPad)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                        }
                    
                }
                .padding()
             
                VStack(spacing: 8){
                    Text("Email")
                        .padding(.trailing, 299)
                    
                    TextField("Your Email", text: $email)
                        .padding()
                        .keyboardType(.numberPad)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                            
                        }
                    
                    
                }
                .padding()
                .autocapitalization(.none)
                .disableAutocorrection(true)
                
                VStack {
                    Text("Password").frame(maxWidth: .infinity, alignment: .leading)
                    ZStack(alignment: .trailing) {
                        Group {
                            if isPasswordVisible {
                                TextField("Password", text: $password)
                            } else {
                                SecureField("Password", text: $password)
                            }
                        }
                        .opacity(1)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray , lineWidth: 1)
                        )
                        Spacer(minLength: 40)
                        Button(action: {
                            isPasswordVisible.toggle()
                        }) {
                            Image(systemName: self.isPasswordVisible ? "eye" : "eye.slash")
                            
                        }.padding()
                    }
                   // Spacer(minLength: 30)
                }
                .padding() // Password
                //.padding()
                .autocapitalization(.none)
                .disableAutocorrection(true)
                Button(action: {
                    user.signUp(email: email, UserName: UserName, lastName: lastName, password: password)
                }) {
                    Text("Sign Up")
                        .frame(width: 353, height: 56)
                        .foregroundColor(Color.white)
                        .background(Color("Color").cornerRadius(10))
                        .padding()
                    
                }
            }
            .padding(.bottom,155)
            // }
        }
    }
    struct AuthenticationView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                
                SignUpView()
                
                SignInView()
                
                
            }
        }
        
    }
}
