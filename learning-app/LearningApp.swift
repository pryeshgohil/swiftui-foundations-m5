//
//  learning_appApp.swift
//  learning-app
//
//  Created by Pryesh Gohil on 15/01/2023.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
