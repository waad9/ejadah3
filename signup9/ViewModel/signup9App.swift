//
//  signup9App.swift
//  signup9
//
//  Created by waad. on 22/07/1444 AH.
//
 

import SwiftUI
import UIKit
import Firebase

@main
struct signup9App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            let user = SignUpViewModel()
            
            splash()
                .environmentObject(user)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
                   [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
