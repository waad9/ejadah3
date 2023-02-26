import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: SignUpViewModel
    
    var body: some View {
        NavigationView {
            if user.userIsAuthenticatedAndSynced {
                ProfileView()
            } else {
                AuthenticationView()
            }
        }
    }
}
