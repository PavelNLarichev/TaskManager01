//
//  CatalogScreen.swift
//  AppSUI01
//
//  Created by Павел Ларичев on 12.03.2022.
//

import SwiftUI

struct TaskScreen: View {
    var body: some View {
        NavigationView {
            
            VStack {
                GeometryReader { geometry in
                    HStack (spacing: 20) {
                        Button(action: {
                            print("12345")
                        }, label: {
                            Image(systemName: "plus.circle")
                                .frame(width: geometry.size.width / 2 - 10, height: 50)
                                .accentColor(Color.green)
                                .background(Color.blue)
                                .cornerRadius(10)
                        })
                        
                        Button(action: {
                            print("12345")
                        }, label: {
                            Image(systemName: "star")
                                .frame(width: geometry.size.width / 2 - 10, height: 50)
                                .accentColor(Color.yellow)
                                .background(Color.blue)
                                .cornerRadius(10)
                        })
                    }
                }.padding().frame(height: 50)
                Divider().padding(.leading).padding(.trailing)
                
                List {
                    TaskCell()
                }
                
            }
            
                .navigationTitle("Tasks")
        }
    }
}

struct TaskCell: View {
    var body: some View {
        HStack{
            Image(systemName: "flag").resizable().frame(width: 30, height: 30).cornerRadius(2)
            VStack (alignment: .leading) {
                Text("Task Name")
                    .font(.title2)
                Text("Task Discraption")
                    .font(.subheadline)
            } .padding(5)
        }
        
    }
}


struct CatalogScreen_Previews: PreviewProvider {
    static var previews: some View {
        TaskScreen()
    }
}
