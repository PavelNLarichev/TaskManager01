//
//  ContentView.swift
//  AppSUI01
//
//  Created by Павел Ларичев on 12.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 2
    
    var body: some View {
        TabView(selection: $selection) {
            DashboardScreen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Homepage")
                }
                .tag(0)
            TaskScreen()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tasks")
                    
                }
                .tag(1)
            ProfileScreen()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
            
        }
            
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
