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
                            .fontWeight(.semibold)
                            .frame(width: 150, height: 150)
                            .background(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.purple, lineWidth: 5)
                                    .shadow(color: .black, radius: 2, x: 2, y: 2))
                                
                    }
                    
                    Spacer()
                    NavigationLink(destination: AOSCategory()) {
                        Text("AOS")
                            .font(.system(size: 60))
                            .fontWeight(.semibold)
                            .frame(width: 150, height: 150)
                            .background(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.purple, lineWidth: 5)
                                    .shadow(color: .black, radius: 2, x: 2, y: 2))
                    }
                }
                .padding(20)
                HStack {
                    NavigationLink(destination: MLCategory()) {
                        Text("ML")
                            .font(.system(size: 60))
                            .fontWeight(.semibold)
                            .frame(width: 150, height: 150)
                            .background(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.purple, lineWidth: 5)
                                .shadow(color: .black, radius: 2, x: 2, y: 2))
                                
                    }
                    
                    Spacer()
                    NavigationLink(destination: iOSCategory()) {
                        Text("Back End")
                            .font(.system(size: 50))
                            .fontWeight(.semibold)
                            .frame(width: 150, height: 150)
                            .background(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.purple, lineWidth: 5)
                                    .shadow(color: .black, radius: 2, x: 2, y: 2))
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
