//
//  EditProfile.swift
//  signup9
//
//  Created by Reham Erwi on 05/08/1444 AH.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift

struct EditProfile: View {
@State var isshownhome = false
@EnvironmentObject var user: SignUpViewModel
//@Environment(.dismiss) var dismiss
@State private var userName: String = ""
@State var emailAddress: String = ""
@State private var password: String = ""
@State private var isPasswordVisible = false
@State private var nav = false

@Environment(\.presentationMode) var presentationMode


let currentUser = Auth.auth().currentUser

func editProfile() {

    let db = Firestore.firestore()
    guard let userID = Auth.auth().currentUser?.uid else {return}
    let username = Auth.auth().currentUser?.displayName
    let userEmail = Auth.auth().currentUser?.email
    let currentUser = Auth.auth().currentUser

    if !userName.isEmpty && !emailAddress.isEmpty {
        
        db.collection("users").document(userID).setData(["username":userName , "email": emailAddress],merge: true)

                if emailAddress != userEmail{
                    currentUser?.updateEmail(to: emailAddress) { error in
                        if let error = error {
                            print (error)
                        }
                    }
                }
        // if userName != username{
        // currentUser?.updateusername(to: userName) { error in
        // if let error = error {
        // print (error)
        // }
        // }
        // }

            }
            
        }


        var body: some View {
            
            NavigationView {
                VStack {
                    
                    ScrollView {
                        VStack {
                            
                            Text("User Name").frame(maxWidth: .infinity, alignment: .leading)
                            TextField("\(user.user?.username ?? "")", text: $userName)
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray , lineWidth: 1)
                                )
                                .background(.white)
                          //  Spacer(minLength: 30)
                        }.padding() //Username
                            
                        
                        VStack   {
                            Text("Email").frame(maxWidth: .infinity, alignment: .leading)
                            TextField("\(currentUser?.email ?? "")", text: $emailAddress)
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray , lineWidth: 1)
                                )
                           // Spacer(minLength: 30)
                        }.padding() //Email Address
                        
                        VStack {
//                            VStack {
//                                Text("Password").frame(maxWidth: .infinity, alignment: .leading)
//                                ZStack(alignment: .trailing) {
//                                    Group {
//                                        if isPasswordVisible {
//                                            TextField("Password", text: $password)
//                                        } else {
//                                            SecureField("Password", text: $password)
//                                        }
//                                    }
//                                    .opacity(1)
//                                    .disableAutocorrection(true)
//                                    .autocapitalization(.none)
//                                    .padding(10)
//                                    .overlay(
//                                        RoundedRectangle(cornerRadius: 8)
//                                            .stroke(.gray , lineWidth: 1)
//                                    )
//                                    Spacer(minLength: 40)
//                                    Button(action: {
//                                        isPasswordVisible.toggle()
//                                    }) {
//                                        Image(systemName: self.isPasswordVisible ? "eye" : "eye.slash")
//                                    }.padding(15)
//                                }
//                                Spacer(minLength: 30)
//                            }.padding(5) // Password
                            VStack {
                            Button("Edit") {editProfile()}
                           
//                            .padding(.horizontal, 145)
//                            .padding(.vertical, 20)
                            .frame(width: 353, height: 56)
                            .background(Color("Color"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            Spacer(minLength: 20)
                            Button("Sign out") {
                            user.signOut()
                            }.foregroundColor(.red)
                            }.padding() // Edit & Sign out buttons
                            }
                            }.padding().foregroundColor(.black) // Main
                            }
                .padding(.top,90)
                .navigationTitle("Profile")
                
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
                            struct EditProfile_previews: PreviewProvider {
                            static var previews: some View {
                            EditProfile()
                            }
                            }
                            }
