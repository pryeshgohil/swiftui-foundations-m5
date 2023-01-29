//
//  ContentView.swift
//  learning-app
//
//  Created by Pryesh Gohil on 25/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ContentModel
 
    var body: some View {
        ScrollView {
            LazyVStack {
                // Confirm that currentModule is set
                if model.currentModule != nil {
                    ForEach(0..<model.currentModule!.content.lessons.count) { index in
                        
                        NavigationLink(
                            destination: ContentDetailView()
                                .onAppear(perform: {
                                    model.beginLesson(lessonIndex: index)
                                }),
                            label: {
                                ContentViewRow(index: index)
                            })
              
                    }
                }

            }
            .accentColor(.black)
            .padding()
            .navigationTitle("Learn \(model.currentModule?.category ?? "")")
        }
    }
}
