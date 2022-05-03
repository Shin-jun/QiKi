//
//  CategoryMenu.swift
//  QiKi
//
//  Created by Shin yongjun on 2022/04/28.
//

import SwiftUI

struct CategoryMenuView: View {
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink(destination: iOSCategory()) {
                        Text("iOS")
                            .font(.system(size: 60))
                            .frame(width: 150, height: 150)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                .stroke(Color(.purple), lineWidth: 10))
                    }
                    
                    Spacer()
                    NavigationLink(destination: iOSCategory()) {
                        Text("AOS")
                            .font(.system(size: 60))
                            .frame(width: 150, height: 150)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                .stroke(Color(.purple), lineWidth: 10))
                    }
                }
                .padding(20)
                Spacer()
            }
            .navigationBarTitle("Tech")
        }
    }
}

struct CategoryMenu_Previews: PreviewProvider {
    static var previews: some View {
        CategoryMenuView()
    }
}
