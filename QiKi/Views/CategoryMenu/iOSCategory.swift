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
    
    @Environment(\.dismiss) var dismiss
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
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.purple, lineWidth: 3)
                                .shadow(color: .gray, radius: 2, x: 2, y: 2)
                    )
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text(techCategory!), message: Text("즐겨찾기로 등록하시겠습니까?"), primaryButton: .destructive(Text("설정"), action: {
                                self.showingAlert = false
                                dismiss()
                                dismiss()
                                UserDefaults.standard.set(self.techCategory, forKey: "saveTechCategory")
                                        }), secondaryButton: .cancel(Text("취소")))
                        }
                }
                .padding(10)
            Button(action: {
                print("UIKit")
                self.showingAlert = true
                self.techCategory = "UIkit"
                }) {
                    Text("UIkit")
                        .frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 30, maxHeight: 30, alignment: .center)
                        .font(.system(size: 30))
                        .padding()
                        .foregroundColor(.purple)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.purple, lineWidth: 3)
                                .shadow(color: .gray, radius: 2, x: 2, y: 2)
                    )
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text(techCategory!), message: Text("즐겨찾기로 등록하시겠습니까?"), primaryButton: .destructive(Text("설정"), action: {
                                self.showingAlert = false
                                UserDefaults.standard.set(self.techCategory, forKey: "saveTechCategory")
                                        }), secondaryButton: .cancel(Text("취소")))
                        }
                }
                .padding(10)
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
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.purple, lineWidth: 3)
                                .shadow(color: .gray, radius: 2, x: 2, y: 2)
                    )
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text(techCategory!), message: Text("즐겨찾기로 등록하시겠습니까?"), primaryButton: .destructive(Text("설정"), action: {
                                self.showingAlert = false
                                UserDefaults.standard.set(self.techCategory, forKey: "saveTechCategory")
                                        }), secondaryButton: .cancel(Text("취소")))
                        }
                }
                .padding(10)
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
