//
//  StudyView.swift
//  QiKi
//
//  Created by Shin yongjun on 2022/04/28.
//

import SwiftUI

struct StudyView: View {
    let categories = ModelData().categories
    @State var showingModal = false
    @State var hours: Int = 0
    @AppStorage("saveTechCategory") var saveTechCategory : String = "SwiftUI"
    //var saveTechCategory = UserDefaults.standard.string(forKey: "saveTechCategory")
    private let filteredCategories : [Category]
  
    
    init(saveTechCategory: String) {
        switch saveTechCategory {
        case "SwiftUI":
            filteredCategories = categories.filter({ $0.pid == 1 })
        case "UIkit":
            filteredCategories = categories.filter({ $0.pid == 2 })
        case "Object-C":
            filteredCategories = categories.filter({ $0.pid == 3 })
        case "Java":
            filteredCategories = categories.filter({ $0.pid == 4 })
        default:
            filteredCategories = categories.filter({ $0.pid == 1 })
        }
    }
    
    // nitification
    func setNotification(){
            let manager = LocalNotificationManager()
            manager.requestPermission()
            manager.addNotification(title: "This is a test reminder")
            manager.scheduleNotifications()
        }

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    HStack {
                        Text(saveTechCategory)
                            .font(.system(size: 35, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        
                        if hours != 0 {
                            Text("\(String(hours))시간 간격 알림")
                                .foregroundColor(Color(.purple))
                        } else {
                            Text("알림 설정이 없습니다")
                                .foregroundColor(Color(.purple))
                        }
                        Button {
                            withAnimation(.default) {
                                self.showingModal = true
                                self.setNotification()
                            }
                        } label: {
                            hours != 0 ? Image(systemName: "bell.fill") : Image(systemName: "bell.slash")
                        }
                        .padding()
                    }
                    // Category List
                    VStack {
                        ForEach(filteredCategories) { item in
                            
                            NavigationLink(destination: QuizView()) {
                                StudyRowView(title: item.title)
                            }
                        }
                    }
                    Spacer()
                }
                if $showingModal.wrappedValue {
                    VStack(alignment: .center) {
                        ZStack{
                            Color.black.opacity(0.4)
                                .edgesIgnoringSafeArea(.vertical)
                            // this one is it
                            VStack(spacing: 20) {
                                Text("알림 시간 간격을 설정해주세요")
                                    .bold().padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color(.purple))
                                    .foregroundColor(Color.white)
                                
                                HStack {
                                    VStack {
                                        Picker("", selection: $hours){
                                            ForEach(0..<6, id: \.self) { i in
                                                Text("\(i) hours").tag(i)
                                            }
                                        }
                                        .frame(width: 150, height: 120)
                                        .clipped()
                                    }
                                    
                                }
                                
                                Spacer()
                                
                                Button(action: {
                                    withAnimation(.spring()){
                                        self.showingModal = false
                                    }
                                }){
                                    Text("저장")
                                } .padding()
                            }
                            .frame(width:300, height: 300)
                            .background(Color.white)
                            .mask(RoundedRectangle(cornerRadius: 20))
                            .shadow(radius: 20)
                            
                            
                        }
                    }
                    
                }
            } // ZStack
            .navigationBarHidden(true)
        }
    }

}


struct StudyView_Previews: PreviewProvider {
    static var previews: some View {
        StudyView(saveTechCategory: "SwiftUI")
    }
}
