//
//  Test.swift
//  learning-app
//
//  Created by Pryesh Gohil on 16/01/2023.
//

import Foundation

struct Test: Decodable, Identifiable {
    var id: Int
    var image: String
    var time: String
    var description: String
    var questions: [Question]
}
