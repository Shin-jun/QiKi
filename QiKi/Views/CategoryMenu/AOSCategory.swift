//
//  AOSCategory.swift
//  QiKi
//
//  Created by Shin yongjun on 2022/05/06.
//

import SwiftUI

struct AOSCategory: View {
    
    // 알람 상태 변수
    @State private var showingAlert = false
    
    @State private var techCategory: String? = ""
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Button(action: {
                print("Java")
                self.techCategory = "Java"
                self.showingAlert = true
                }) {
                    Text("Java")
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
                print("Kotlin")
                self.showingAlert = true
                self.techCategory = "Kotlin"
                }) {
                    Text("Kotlin")
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
        .navigationTitle("AOS")
    }
}

struct AOSCategory_Previews: PreviewProvider {
    static var previews: some View {
        AOSCategory()
    }
}
