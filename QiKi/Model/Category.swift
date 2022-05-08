//
//  Cartegory.swift
//  QiKi
//
//  Created by Shin yongjun on 2022/05/03.
//

import Foundation

struct Category: Identifiable, Decodable {
    var id: Int
    var pid: Int
    var title: String
}

