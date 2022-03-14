//
//  ProfileScreen.swift
//  AppSUI01
//
//  Created by Павел Ларичев on 12.03.2022.
//

import SwiftUI

final class ProfileViewModel: ObservableObject {
    
    @Published var isModal: Bool = false
    
}

struct ProfileScreen: View {
    
    @State var isNavigate: Bool = false
    //@StateObject var viewModel: ProfileViewModel = .init()
    var body: some View {
        NavigationView {
            VStack {
                //Text("ProfileScreen")
                Spacer()
                Button {
                    isNavigate.toggle()
                } label: {
                    Text("Navigation Button")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.gray)
                    
                }
                Divider()
                PersonInfoView(isNavigate: $isNavigate)
                
            }
            .navigationTitle("Profile")
        }
    }
    
    
    struct PersonInfoView: View {
        
        @Binding var isNavigate: Bool
        
        @EnvironmentObject var profileViewModel: ProfileViewModel
        
        var body: some View {
            ScrollView {
                NavigationLink(
                    destination: Text("Destination"),
                    //isActive: $isNavigate,
                    label: {
                        Text("Navigate")
                    })
                Spacer()
                    .frame(height: 200)
                ScrollView(.horizontal) {
                    HStack(spacing: -2) {
                        Group{
                            Image(systemName: "lasso")
                            Image(systemName: "lasso")
                            Image(systemName: "lasso")
                            Image(systemName: "lasso")
                            Image(systemName: "lasso")
                            Image(systemName: "lasso")
                            Image(systemName: "lasso")
                            Image(systemName: "lasso")
                            Image(systemName: "lasso")
                            Image(systemName: "lasso")
                        }
                        Image(systemName: "lasso")
                        Image(systemName: "lasso")
                    }.font(.largeTitle)
                    
                }
                .padding(.vertical, 20)
                Spacer().frame(height: 100)
                Image(systemName: "megaphone")
                    .font(.largeTitle)
                //вызвали модалку
                    . onTapGesture {
                        profileViewModel.isModal.toggle()
                    }
                //делаем модалку
                    .sheet(isPresented: $profileViewModel.isModal) {
                        Text("I'm the modal! \(profileViewModel.isModal.description)")
                    }
            }
            
            
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
