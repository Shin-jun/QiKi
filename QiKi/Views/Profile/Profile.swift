//
//  Profile.swift
//  QiKi
//
//  Created by Shin yongjun on 2022/05/05.
//

import SwiftUI

struct Profile: View {
    @AppStorage("quiz") var score : Int = 1
    @AppStorage("saveTechCategory") var saveTechCategory : String = ""
    
    let quizs = ModelData().quizs
    var body: some View {
            ZStack {
                VStack {
                    VStack {
                        Text("Profile")
                            .font(.system(size: 35, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                    .padding(.top, -170)
                    
                    Image("Everett")
                        .resizable()
                        .frame(width: 142, height: 142)
                        .scaledToFill()
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.purple, lineWidth: 5)
                        }
                    
                    Spacer().frame(width: 30, height: 60, alignment: .center)
                    VStack {
                        Text("Everett")
                            .font(.system(.title))
                            .foregroundColor(Color.purple)
                            .padding()
                        
                        Text("last Score : \(self.score) / \(quizs.count)")
                            .font(.system(.title2))
                            .foregroundColor(Color(.purple))
                            .onAppear() {
                                self.score = LoadScore(quiz: "quiz")
                            }
                            .padding()
                        Text("선택한 분야 : \(saveTechCategory)")
                            .foregroundColor(.purple)
                            .font(.system(.title3))
                    }
                }
                Spacer()
        }
            
    }
}


struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
