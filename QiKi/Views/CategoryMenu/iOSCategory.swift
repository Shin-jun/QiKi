//
//  iOSCategory.swift
//  QiKi
//
//  Created by Shin yongjun on 2022/05/02.
//

import SwiftUI

struct iOSCategory: View {
    
    // 알람 상태 변수
    @State private var showingAlert = false
    @State private var techCategory: String? = ""
    var body: some View {
        VStack {
            Button(action: {
                print("SwiftUI")
                self.techCategory = "SwiftUI"
                self.showingAlert = true
                }) {
                    Text("SwiftUI")
                        .frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 30, maxHeight: 30, alignment: .center)
                        .font(.system(size: 30))
                        .padding()
                        .foregroundColor(.purple)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.purple, lineWidth: 4)
                    )
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text(techCategory!), message: Text("즐겨찾기로 등록하시겠습니까?"), primaryButton: .destructive(Text("설정"), action: {
                                self.showingAlert = false
                                        }), secondaryButton: .cancel(Text("취소")))
                        }
                }
                .padding()
            Button(action: {
                print("StoryBoard")
                self.showingAlert = true
                self.techCategory = "StoryBoard"
                }) {
                    Text("StoryBoard")
                        .frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 30, maxHeight: 30, alignment: .center)
                        .font(.system(size: 30))
                        .padding()
                        .foregroundColor(.purple)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.purple, lineWidth: 4)
                    )
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text(techCategory!), message: Text("즐겨찾기로 등록하시겠습니까?"), primaryButton: .destructive(Text("설정"), action: {
                                self.showingAlert = false
                                        }), secondaryButton: .cancel(Text("취소")))
                        }
                }
                .padding()
            Button(action: {
                print("Object-C")
                self.showingAlert = true
                self.techCategory = "Object-C"
                }) {
                    Text("Object-C")
                        .frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 30, maxHeight: 30, alignment: .center)
                        .font(.system(size: 30))
                        .padding()
                        .foregroundColor(.purple)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.purple, lineWidth: 4)
                    )
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text(techCategory!), message: Text("즐겨찾기로 등록하시겠습니까?"), primaryButton: .destructive(Text("설정"), action: {
                                self.showingAlert = false
                                        }), secondaryButton: .cancel(Text("취소")))
                        }
                }
                .padding()
            Spacer()
        }
        .navigationTitle("iOS")
    }
}

struct iOSCategory_Previews: PreviewProvider {
    static var previews: some View {
        iOSCategory()
    }
}
