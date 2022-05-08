//
//  StudyRowView.swift
//  QiKi
//
//  Created by Shin yongjun on 2022/05/03.
//

import SwiftUI

struct StudyRowView: View {
    let title: String
    
    var body: some View {
        
        Text(title)
            .frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 30, maxHeight: 30, alignment: .center)
            .font(.system(size: 30))
            .padding()
            .foregroundColor(.purple)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.purple, lineWidth: 4)
        )
            .padding(.top, 10)
    }

}

struct StudyRowView_Previews: PreviewProvider {
    static var previews: some View {
        StudyRowView(title: ModelData().categories[0].title)
    }
}

