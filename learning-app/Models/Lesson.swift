//
//  Lesson.swift
//  learning-app
//
//  Created by Pryesh Gohil on 16/01/2023.
//

import Foundation

struct Lesson: Decodable, Identifiable {
    var id: Int
    var title: String
    var video: String
    var duration: String
    var explanation: String
}
