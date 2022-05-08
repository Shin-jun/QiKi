//
//  ContentView.swift
//  QiKi
//
//  Created by Shin yongjun on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("saveTechCategory") var saveTechCategory : String = "SwiftUI"
    
    enum Tabs: String {
        case menu = "메뉴"
        case study = "공부"
        case profile = "프로필"
    }
    
    @State var tabSelection:Tabs = .menu
    
    var body: some View {
        TabView {
            CategoryMenuView()
                .tabItem{
                    if tabSelection == Tabs.menu {
                        Image(systemName: "list.bullet.circle")
                    } else {
                        Image(systemName: "list.bullet.circel.fill")
                    }
                    
                    
                    Text("메뉴")
                }
            
            StudyView(saveTechCategory: saveTechCategory)
                .tabItem {
                    if tabSelection == Tabs.study {
                        Image(systemName: "book.closed.fill")
                    } else {
                        Image(systemName: "book.closed")
                    }
                    
                    Text("공부")
                }
            Profile()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("프로필")
                }
        }
        .accentColor(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
