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

    var body: some View {
        NavigationView {
            VStack {
                Text("ProfileScreen")
//                Spacer()
//                Button {
//                    isNavigate.toggle()
//                } label: {
//                    Text("Navigation Button")
//                        .padding()
//                        .foregroundColor(.white)
//                        .background(Color.gray)
//
//                }
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
//                NavigationLink(
//                    destination: Text("Destination"),
//                    //isActive: $isNavigate,
//                    label: {
//                        Text("Navigate")
//                    })
//                Spacer()
//                    .frame(height: 200)
//                ScrollView(.horizontal) {
//                    HStack(spacing: -2) {
//                        Group{
//                            Image(systemName: "lasso")
//                            Image(systemName: "lasso")
//                            Image(systemName: "lasso")
//                            Image(systemName: "lasso")
//                            Image(systemName: "lasso")
//                            Image(systemName: "lasso")
//                            Image(systemName: "lasso")
//                            Image(systemName: "lasso")
//                            Image(systemName: "lasso")
//                            Image(systemName: "lasso")
//                        }
//                        Image(systemName: "lasso")
//                        Image(systemName: "lasso")
//                    }.font(.largeTitle)
//
//                }
//                .padding(.vertical, 20)
//                Spacer().frame(height: 100)
                Image(systemName: "info.circle")
                    .font(.largeTitle)
                //вызвали модалку
                    . onTapGesture {
                        profileViewModel.isModal.toggle()
                    }
                //делаем модалку
                    .sheet(isPresented: $profileViewModel.isModal) {
                        Text("""
                             Информация!
                             Магнитное поле выслеживает параллакс, об интересе Галла к астрономии и затмениям Цицерон говорит также в трактате "О старости" (De senectute). Бесспорно, параметр отражает метеорит. Узел колеблет математический горизонт.
                             """)
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
