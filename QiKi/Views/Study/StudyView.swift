//
//  StudyView.swift
//  QiKi
//
//  Created by Shin yongjun on 2022/04/28.
//

import SwiftUI

struct StudyView: View {
    var body: some View {
        VStack {
            HStack {
                Text("SwiftUI")
                    .font(.system(size: 40, weight: .medium))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                
            }
            Spacer()
        }
    }
}

struct StudyView_Previews: PreviewProvider {
    static var previews: some View {
        StudyView()
    }
}
