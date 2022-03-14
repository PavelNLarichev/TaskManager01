//
//  AppSUI01App.swift
//  AppSUI01
//
//  Created by Павел Ларичев on 12.03.2022.
//

import SwiftUI

@main
struct AppSUI01App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ProfileViewModel())
        }
    }
}
