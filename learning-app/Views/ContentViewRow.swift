//
//  ContentViewRow.swift
//  learning-app
//
//  Created by Pryesh Gohil on 25/01/2023.
//

import SwiftUI

struct ContentViewRow: View {
    
    var index: Int
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        let lesson = model.currentModule!.content.lessons[index]
        
        // Lesson card
        
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height:66)
            
            
            HStack(spacing: 30) {
                Text(String(index + 1))
                    .bold()
                
                VStack(alignment: .leading) {
                    Text(lesson.title)
                        .bold()
                    Text(lesson.duration)
                }
            }
            .padding()
        }
        .padding(.bottom, 5)
    }
}
