//
//  DashboardScreen.swift
//  AppSUI01
//
//  Created by Павел Ларичев on 12.03.2022.
//

import SwiftUI

struct DashboardScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: TaskScreen()) {
                    Text("Go to TaskScreen")
                }
            }
        }
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}
