//
//  Module.swift
//  learning-app
//
//  Created by Pryesh Gohil on 16/01/2023.
//

import Foundation

struct Module : Decodable, Identifiable {
    var id: Int
    var category: String
    var content: Content
    var test: Test
}
